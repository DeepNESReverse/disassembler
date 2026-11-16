/**
 * Every kind of object the game's spawn lists place (STATUS §15: the rows at $C69B, each naming an
 * entry of $AD5C), one picture a kind, for xrom.dev's Objects chapter: a table of id and object →
 * out/levels/kinds.json, out/levels/kinds/<kind>.png (objects.json is §11's).
 *   node --experimental-strip-types --no-warnings src/objects-table.ts
 *
 * The items keep the pictures items.ts read and checked (out/levels/items). The others — the
 * enemies, the falling rocks and icicles — move, so their look is read by the slot, not by a place
 * on the map: the spawner keeps per slot the entry it filled it from ($6D-$70, slot X at
 * $0633 + $1F·X), so on every frame a slot is on, its kind is known; the sprites around its place
 * (X at +2/+3, Y at +9/+10, as the player's), each given to the nearest slot, the player's left out,
 * laid by the map's camera from take.bin.gz, fades left out. Per kind the commonest set of sprites
 * (among the common ones the biggest: a sprite dropped by the eight-a-line limit), with that frame's
 * CHR banks and sprite colours.
 */
import { mkdirSync, readFileSync, writeFileSync, copyFileSync } from 'node:fs';
import { gunzipSync } from 'node:zlib';
import { encodePng } from '../libs/nes/src/png.ts';
import { NES_RGB } from '../libs/nes/src/palette.ts';
import { romFile } from './rom.ts';
import { prg, SECTIONS } from './level.ts';
import { Run } from './run.ts';
import { ITEMS, rowsOf } from './items.ts';

/** What each kind is, by its picture in the run's frames (the items' names are items.ts's). */
export const OTHERS: Record<number, string> = {
  0x00: 'stone', // small, rolling down the ice cave's slopes (section 10)
  0x01: 'boulder',
  0x03: 'eagle',
  0x04: 'icicle',
  0x05: 'snow clump', // on the cabins' roofs (sections 1, 2) and the ledges
  0x06: 'henchman',
  0x07: 'henchman',
  0x08: 'henchman',
  0x09: 'henchman',
  0x0b: 'bat', // the ice caves (sections 10, 11)
  0x0c: 'log', // on the river over the waterfall (section 12)
  0x0d: 'wolf',
};

const B5 = (cpu: number) => 5 * 0x4000 + (cpu - 0x8000);

// The kinds the spawn lists place (a row whose object lands far from it is left out, as in items.ts).
const kinds = new Set<number>();
for (let s = 0; s < SECTIONS; s++) for (const r of rowsOf(s)) if (Math.abs(r.rx - r.x) <= 64 && Math.abs(r.ry - r.y) <= 64) kinds.add(r.kind);

// The map's camera per frame (take-pack.ts).
const take = gunzipSync(readFileSync('out/levels/take.bin.gz'));
const takeCam = new Map<number, { x: number; y: number }>();
{
  const frames = take.readUInt32LE(4);
  const st = new Uint8Array(take.readUInt16LE(8));
  const i16 = (lo: number, hi: number) => (((hi << 8) | lo) << 16) >> 16;
  for (let f = 0, o = 10; f <= frames; f++) {
    const n = take.readUInt16LE(o);
    o += 2;
    for (let k = 0; k < n; k++, o += 3) st[take.readUInt16LE(o)] = take[o + 2];
    o += 2 + 2 * take.readUInt16LE(o);
    if (st[1]) takeCam.set(f, { x: i16(st[2], st[3]), y: i16(st[4], st[5]) });
  }
}

const run = new Run();
const m = run.m;
const nes = m.nes as unknown as { oam: Uint8Array };
const mapper = m.nes.mapper as unknown as { chrAt(a: number): number };
const ppu = m.ppu as unknown as { scanline(l: number): void; ctrl: number; palette: Uint8Array };
let oam = new Uint8Array(256), banks: number[] = [], ctrl = 0, sprPal: number[] = [];
const scanline = ppu.scanline.bind(ppu);
ppu.scanline = (line) => {
  scanline(line);
  if (line === 100) {
    oam = nes.oam.slice();
    banks = Array.from({ length: 8 }, (_, i) => (mapper.chrAt(i * 0x400) >> 10) & 0xff);
    ctrl = ppu.ctrl;
    sprPal = [...ppu.palette.subarray(16, 32)];
  }
};

interface Look { sprites: number[][]; banks: number[]; palette: number[]; tall: boolean; n: number; frame: number }
const seen = new Map<number, Map<string, Look>>();
const end = run.pads.length + 600;
const dark = (c: number) => (c & 0x0f) >= 0x0d;
for (let f = 985; f <= end; f++) {
  run.to(f);
  const cam = takeCam.get(f);
  if (!cam) continue;
  const base = B5(m.ram[0x51e] | (m.ram[0x51f] << 8));
  const pos = (b: number) => ({ x: ((m.ram[b + 3] << 8) | m.ram[b + 2]) / 32, y: ((m.ram[b + 10] << 8) | m.ram[b + 9]) / 32 });
  const near = (x: number) => { while (x < cam.x - 512) x += 2048; while (x > cam.x + 1536) x -= 2048; return x; };
  const slots: { kind: number; sx: number; sy: number }[] = [];
  for (let k = 0; k < 4; k++) {
    const b = 0x633 + 0x1f * k, idx = m.ram[0x6d + k];
    if (!(m.ram[b] & 1) || idx >= 0xfe) continue;
    const p = pos(b);
    slots.push({ kind: prg[base + 9 * idx + 1], sx: near(p.x) - cam.x, sy: p.y - cam.y });
  }
  if (!slots.length) continue;
  const pl = pos(0x614);
  const qx = near(pl.x) - cam.x, qy = pl.y - cam.y;
  const mine = new Map<number, number[][]>();
  for (let k = 0; k < 64; k++) {
    if (oam[k * 4] >= 0xef) continue;
    const y = oam[k * 4] + 1, x = oam[k * 4 + 3];
    if (x >= qx - 4 && x < qx + 24 && y >= qy - 4 && y < qy + 40) continue;
    let best = -1, bd = Infinity;
    slots.forEach((sl, i) => {
      if (x < sl.sx - 16 || x >= sl.sx + 40 || y < sl.sy - 24 || y >= sl.sy + 40) return;
      const d = Math.hypot(x + 4 - (sl.sx + 8), y + 4 - (sl.sy + 12));
      if (d < bd) (bd = d), (best = i);
    });
    if (best >= 0) (mine.get(best) ?? mine.set(best, []).get(best)!).push([x - slots[best].sx, y - slots[best].sy, oam[k * 4 + 1], oam[k * 4 + 2]]);
  }
  for (const [i, sprites] of mine) {
    const sl = slots[i];
    if (!kinds.has(sl.kind) || ITEMS[sl.kind]) continue;
    // Wholly on the field.
    if (sl.sx < 24 || sl.sx > 200 || sl.sy < 24 || sl.sy > 130) continue;
    if (sprites.every((p) => [1, 2, 3].every((c) => dark(sprPal[(p[3] & 3) * 4 + c])))) continue;
    const ax = Math.min(...sprites.map((p) => p[0])), ay = Math.min(...sprites.map((p) => p[1]));
    const rel = sprites.map(([x, y, t, a]) => [x - ax, y - ay, t, a]).sort((a, b) => a[1] - b[1] || a[0] - b[0]);
    const key = JSON.stringify(rel) + rel.map((p) => sprPal.slice((p[3] & 3) * 4, (p[3] & 3) * 4 + 4).join('.')).join('|');
    if (!seen.has(sl.kind)) seen.set(sl.kind, new Map());
    const v = seen.get(sl.kind)!.get(key) ?? { sprites: rel, banks, palette: sprPal, tall: (ctrl & 0x20) !== 0, n: 0, frame: f };
    v.n++;
    seen.get(sl.kind)!.set(key, v);
  }
}

const rom = romFile();
const chr = rom.subarray(16 + rom[4] * 0x4000);
mkdirSync('out/levels/kinds', { recursive: true });
function draw(look: Look, file: string) {
  const height = look.tall ? 16 : 8;
  const w = Math.max(...look.sprites.map((p) => p[0])) + 8, h = Math.max(...look.sprites.map((p) => p[1])) + height;
  const px = new Array(w * h).fill(-1);
  for (const [dx, dy, tile, attr] of [...look.sprites].reverse()) {
    for (let r = 0; r < height; r++) {
      let row = attr & 0x80 ? height - 1 - r : r;
      let base: number;
      if (look.tall) {
        base = ((tile & 1) << 12) | ((tile & 0xfe) << 4);
        if (row >= 8) (base += 16), (row -= 8);
      } else base = 0x1000 | (tile << 4);
      const at = (a: number) => chr[look.banks[a >> 10] * 0x400 + (a & 0x3ff)];
      const lo = at(base + row), hi = at(base + row + 8);
      for (let j = 0; j < 8; j++) {
        const bit = attr & 0x40 ? j : 7 - j;
        const c = ((lo >> bit) & 1) | (((hi >> bit) & 1) << 1);
        if (c) px[(dy + r) * w + dx + j] = NES_RGB[look.palette[(attr & 3) * 4 + c] & 0x3f];
      }
    }
  }
  writeFileSync(file, encodePng(px, w, h, 1));
  return { w, h };
}

// The items: the first picture of each kind in items.json, as the items' own page has them.
const placed = JSON.parse(readFileSync('out/levels/items.json', 'utf8')).sections as Record<string, { kind: number; img: string; w: number; h: number }[]>;
const itemPic = new Map<number, { img: string; w: number; h: number }>();
for (const list of Object.values(placed)) for (const it of list) if (!itemPic.has(it.kind)) itemPic.set(it.kind, it);

const out: { kind: number; id: string; name: string; item: boolean; img: string; w: number; h: number }[] = [];
const missing: number[] = [];
for (const kind of [...kinds].sort((a, b) => a - b)) {
  const id = `$${kind.toString(16).toUpperCase().padStart(2, '0')}`;
  const file = `kinds/${kind.toString(16).padStart(2, '0')}.png`;
  if (ITEMS[kind]) {
    const p = itemPic.get(kind)!;
    copyFileSync(`out/levels/${p.img}`, `out/levels/${file}`);
    out.push({ kind, id, name: ITEMS[kind].name, item: true, img: file, w: p.w, h: p.h });
    continue;
  }
  const ways = [...(seen.get(kind)?.values() ?? [])].sort((a, b) => b.n - a.n);
  if (!ways.length) { missing.push(kind); continue; }
  const look = ways.filter((w) => w.n >= ways[0].n * 0.2).sort((a, b) => b.sprites.length - a.sprites.length || b.n - a.n)[0];
  const { w, h } = draw(look, `out/levels/${file}`);
  out.push({ kind, id, name: OTHERS[kind] ?? `object ${id}`, item: false, img: file, w, h });
  console.log(`${id}: ${look.sprites.length} sprites, ${look.n} of ${ways.reduce((t, v) => t + v.n, 0)} frames (first ${look.frame}), ${w} × ${h}`);
}
writeFileSync('out/levels/kinds.json', JSON.stringify({ objects: out }) + '\n');
console.log(`${out.length} kinds (${out.filter((o) => o.item).length} items)${missing.length ? `; never seen whole: ${missing.map((k) => k.toString(16)).join(' ')}` : ''}`);
