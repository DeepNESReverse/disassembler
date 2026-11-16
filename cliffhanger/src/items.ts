/**
 * What the player can pick up, where the game puts it, and when klmz's run takes it (STATUS §15)
 * → out/levels/items.json and out/levels/items/<section>-<kind>.png.
 *   node --experimental-strip-types --no-warnings src/items.ts
 *
 * The game's objects come from two lists (STATUS §11, §15). The one the spawner walks is the second:
 * a word per section at CPU $C69B (fixed bank) points into bank 5 at a count (a word) and 5-byte
 * rows — X in tiles (word; bit 7 of its high byte: spawned, bit 6: gone), Y in tiles (word), and
 * the index of a 9-byte entry in the section's first list ($AD5C), which gives the kind and the
 * place the object stands. Copied to $0423 on, the rows keep their two flags in RAM: the scan at
 * $D685 spawns a row's object when the camera ($14/$16, in tiles) comes within 35 × 30 tiles of the
 * row's X/Y, and sets bit 7 even when the four object slots are full (the object is then skipped
 * until the row leaves the window and comes back: $D90E). On a restart ($D88B) bit 6 is kept only
 * for kinds $0E-$17 — the money — so a taken bag stays taken; the knife, the gun, the fires come back.
 *
 * Not every row is an item, nor every index a place: section 4's last row points past its own
 * entries into the house's (a boot at the house's x 88, y 75, in the sky of section 4) and section
 * 11's into nothing (kind $20 at x 240 640). Such a row's object is put far from where it is spawned
 * and is gone again before the camera reaches it: an item is kept only when its row and its place
 * are within 64 px.
 *
 * The look of each item is read off the run: on every frame it is on the field, the sprites at its
 * place (OAM at line 100, and the map's camera of out/levels/take.bin.gz, where the page lays the frame), per section and kind
 * the commonest set, with that frame's CHR banks and sprite colours. A section and kind the run never
 * shows borrows the look of the same kind (or of the same picture: the bags, the cases) from another.
 */
import { mkdirSync, readFileSync, writeFileSync } from 'node:fs';
import { gunzipSync } from 'node:zlib';
import { encodePng } from '../libs/nes/src/png.ts';
import { NES_RGB } from '../libs/nes/src/palette.ts';
import { romFile } from './rom.ts';
import { prg, SECTIONS } from './level.ts';
import { Run } from './run.ts';

const B5 = (cpu: number) => 5 * 0x4000 + (cpu - 0x8000);
const word = (o: number) => prg[o] | (prg[o + 1] << 8);

/** The kinds a player picks up, by the picture the game shows (checked on the run's frames). */
export const ITEMS: Record<number, { name: string; like?: number }> = {
  0x0e: { name: 'money bag' },
  0x0f: { name: 'money bag', like: 0x0e },
  0x10: { name: 'money bag', like: 0x11 },
  0x11: { name: 'money bag', like: 0x0e },
  0x14: { name: 'money bag', like: 0x0e },
  0x15: { name: 'money bag', like: 0x0e },
  0x17: { name: 'money bag', like: 0x0e },
  0x12: { name: 'money case', like: 0x13 },
  0x13: { name: 'money case', like: 0x16 },
  0x16: { name: 'money case', like: 0x13 },
  0x18: { name: 'knife' },
  0x19: { name: 'pistol' },
  0x1c: { name: 'dynamite' },
  0x1a: { name: 'boot' },
  0x1f: { name: 'boot' },
  0x1d: { name: 'boots' },
  0x1e: { name: '1-up' },
  0x21: { name: 'campfire' },
};

export interface Row {
  row: number;
  /** The row's own place, in pixels: where the camera has to come for the game to spawn it. */
  rx: number;
  ry: number;
  idx: number;
  kind: number;
  /** The place the object stands, in the section map's pixels. */
  x: number;
  y: number;
}

export function rowsOf(s: number): Row[] {
  const list = B5(word(0x1c69b + 2 * s));
  const n = prg[list];
  const at = word(B5(0xad5c) + 2 * s);
  if (!at) return [];
  return Array.from({ length: n }, (_, i) => {
    const r = list + 2 + 5 * i;
    const idx = prg[r + 4];
    const e = B5(at) + 9 * idx;
    return { row: i, rx: word(r) * 8, ry: word(r + 2) * 8, idx, kind: prg[e + 1], x: word(e + 2) * 8, y: ((prg[e + 5] << 8) | prg[e + 4]) / 32 };
  });
}

interface Look { sprites: number[][]; banks: number[]; palette: number[]; tall: boolean; n: number; of: number; at: Map<string, number> }

if (import.meta.url === `file://${process.argv[1]}`) {
  const rows = Array.from({ length: SECTIONS }, (_, s) => rowsOf(s));
  const items: (Row & { s: number; taken: number[][]; skipped: number[][]; seen?: number; absent: number[] })[] = [];
  const phantoms: string[] = [];
  rows.forEach((list, s) =>
    list.forEach((r) => {
      if (!ITEMS[r.kind]) return;
      if (Math.abs(r.rx - r.x) > 64 || Math.abs(r.ry - r.y) > 64) phantoms.push(`section ${s} row ${r.row}: ${ITEMS[r.kind].name} (kind $${r.kind.toString(16)}) at ${r.x}, ${r.y}, its row at ${r.rx}, ${r.ry}`);
      else items.push({ ...r, s, taken: [], skipped: [], absent: [] });
    }),
  );

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

  // The map's camera per frame, as the page lays the game's frame on the map (take-pack.ts: the
  // RAM's, set by the frame's scroll where it is a pixel or two off), and whether the field is shown.
  const take = gunzipSync(readFileSync('out/levels/take.bin.gz'));
  const takeCam = new Map<number, { x: number; y: number }>();
  {
    const frames = take[4] | (take[5] << 8) | (take[6] << 16);
    const st = new Uint8Array(take[8] | (take[9] << 8));
    const i16 = (lo: number, hi: number) => (((hi << 8) | lo) << 16) >> 16;
    let o = 10;
    for (let f = 0; f <= frames; f++) {
      const count = take[o] | (take[o + 1] << 8);
      o += 2;
      for (let k = 0; k < count; k++, o += 3) st[take[o] | (take[o + 1] << 8)] = take[o + 2];
      o += 2 + 2 * (take[o] | (take[o + 1] << 8));
      if (st[1]) takeCam.set(f, { x: i16(st[2], st[3]), y: i16(st[4], st[5]) });
    }
  }

  const seen = new Map<string, Map<string, Look>>();
  const open = new Map<(typeof items)[number], number>();
  // Skipped: the row marked spawned with no object at its place — the four slots were full when the
  // camera came (section 5's lower bag from frame 9603 on, the user saw it come and go under the
  // run's frame). Until the row leaves the window ($D90E) the game does not try again.
  const skip = new Map<(typeof items)[number], number>();
  const was = new Map<(typeof items)[number], number>();
  // The last frame an object stood at the item's place: the game takes it off its slot 2-4 frames
  // before it marks the row gone, and the item is gone from then.
  const lastHere = new Map<(typeof items)[number], number>();
  let last = -1;
  const end = run.pads.length + 600;
  for (let f = 985; f <= end; f++) {
    run.to(f);
    const s = m.ram[0x40a];
    const mine = items.filter((it) => it.s === s);
    const valid = s < SECTIONS && m.ram[0x51d] === rows[s].length;
    if (s !== last) {
      // A section entered anew loads its rows from the cartridge: whatever was taken there is back.
      last = s;
      lastHere.clear();
      for (const [it, a] of skip) it.skipped.push([a, f]);
      skip.clear();
      was.clear();
      if (valid) for (const it of mine) if (open.has(it) && !(m.ram[0x424 + 5 * it.row] & 0x40)) it.taken.push([open.get(it)!, f]), open.delete(it);
    }
    if (!valid) continue;
    const px = ((m.ram[0x617] << 8) | m.ram[0x616]) / 32, py = ((m.ram[0x61e] << 8) | m.ram[0x61d]) / 32;
    const slots = [1, 2, 3, 4, 5].map((k) => 0x614 + 0x1f * k).filter((b) => m.ram[b] & 1).map((b) => ({ x: ((m.ram[b + 3] << 8) | m.ram[b + 2]) / 32, y: ((m.ram[b + 10] << 8) | m.ram[b + 9]) / 32 }));
    for (const it of mine) {
      const flags = m.ram[0x424 + 5 * it.row];
      const here = slots.some((p) => Math.abs((p.x - it.x + 4096) % 2048) < 2 && Math.abs(p.y - it.y) < 2);
      if (here) lastHere.set(it, f);
      if (flags & 0x40 && !open.has(it)) {
        const l = lastHere.get(it);
        open.set(it, l !== undefined && f - l <= 8 ? l + 1 : f);
      }
      if (!(flags & 0x40) && open.has(it)) it.taken.push([open.get(it)!, f]), open.delete(it);
      if (flags & 0x80 && !((was.get(it) ?? 0) & 0x80) && !(flags & 0x40) && !here) skip.set(it, f);
      // The check of it all: its place wholly in the camera's field and the game not showing it.
      const cam = takeCam.get(f);
      if (cam && !here && !(flags & 0x40) && it.x >= cam.x + 8 && it.x + 16 <= cam.x + 256 && it.y >= cam.y && it.y + 16 <= cam.y + 176) it.absent.push(f);
      if (skip.has(it) && (here || !(flags & 0x80) || flags & 0x40)) it.skipped.push([skip.get(it)!, f]), skip.delete(it);
      was.set(it, flags);
      // Its look: an object in a slot at its place (X kept mod 2048), wholly on the field.
      if (!(flags & 0x80) || flags & 0x40) continue;
      if (!slots.some((p) => Math.abs((p.x - it.x + 4096) % 2048) < 2 && Math.abs(p.y - it.y) < 2)) continue;
      const at = takeCam.get(f);
      if (!at) continue;
      const sx = it.x - at.x, sy = it.y - at.y;
      if (sx < 16 || sx > 216 || sy < 12 || sy > 140) continue;
      let ppx = px;
      while (ppx < at.x - 512) ppx += 2048;
      const qx = ppx - at.x, qy = py - at.y;
      const wide = it.kind === 0x21 ? 32 : 22;
      const sprites: number[][] = [];
      for (let k = 0; k < 64; k++) {
        if (oam[k * 4] >= 0xef) continue;
        const y = oam[k * 4] + 1, x = oam[k * 4 + 3];
        const inItem = x >= sx - 6 && x < sx + wide && y >= sy - 10 && y < sy + 20;
        const inPlayer = x >= qx - 4 && x < qx + 24 && y >= qy - 4 && y < qy + 40;
        // A sprite nearer another item's place is that one's (the house's knife and boot, 16 px apart).
        const d = (o: Row) => Math.hypot(x + 4 - (o.x - at.x + 10), y + 4 - (o.y - at.y + 8));
        const nearer = mine.some((o) => o !== it && d(o) < d(it));
        if (inItem && !inPlayer && !nearer) sprites.push([Math.round(x - sx), Math.round(y - sy), oam[k * 4 + 1], oam[k * 4 + 2]]);
      }
      if (!sprites.length) continue;
      // Not in a fade: the colours of the sprites' palettes are not all black.
      const dark = (c: number) => (c & 0x0f) >= 0x0d;
      if (sprites.every((p) => [1, 2, 3].every((c) => dark(sprPal[(p[3] & 3) * 4 + c])))) continue;
      sprites.sort((a, b) => a[1] - b[1] || a[0] - b[0]);
      it.seen ??= f;
      const key = `${s}:${it.kind}`;
      if (!seen.has(key)) seen.set(key, new Map());
      // The sprites as one picture, its place apart: the RAM's camera is a pixel or two off the
      // map's on some frames (take-pack.ts sets those by the scroll), so the place is the one most
      // frames agree on.
      const ax = Math.min(...sprites.map((p) => p[0])), ay = Math.min(...sprites.map((p) => p[1]));
      const rel = sprites.map(([x, y, t, a]) => [x - ax, y - ay, t, a]);
      // The colours count too: the same sprites in a fade's darker ones are another look.
      const lk = JSON.stringify(rel) + rel.map((p) => sprPal.slice((p[3] & 3) * 4, (p[3] & 3) * 4 + 4).join('.')).join('|');
      const v = seen.get(key)!.get(lk) ?? { sprites: rel, banks, palette: sprPal, tall: (ctrl & 0x20) !== 0, n: 0, of: 0, at: new Map() };
      v.n++;
      v.at.set(`${ax},${ay}`, (v.at.get(`${ax},${ay}`) ?? 0) + 1);
      seen.get(key)!.set(lk, v);
    }
  }
  for (const [it, f] of open) it.taken.push([f, end + 1]);
  for (const [it, f] of skip) it.skipped.push([f, end + 1]);
  // Skipped and never on the field in the run: pale all through it — drawn whole until the camera
  // came, it looked there and then gone under the game's frame (section 2's bag, the user's word).
  // Section 7's knife is put once, off the field, and taken off again 38 frames later: the same.
  for (const it of items) if (it.skipped.length && it.seen === undefined) it.skipped = [[0, end + 1]];
  const inside = (f: number, spans: number[][]) => spans.some(([a, b]) => f >= a && f < b);
  for (const it of items) {
    const bad = it.absent.filter((f) => !inside(f, it.skipped) && !inside(f, it.taken));
    if (bad.length) console.log(`IN VIEW, NOT SHOWN, NOT MARKED: section ${it.s} row ${it.row} ${ITEMS[it.kind].name} at ${it.x}, ${it.y}: ${bad.length} frames, ${bad[0]}-${bad[bad.length - 1]}`);
  }
  console.log(`in view and not shown by the game, unmarked: ${items.reduce((t, it) => t + it.absent.filter((f) => !inside(f, it.skipped) && !inside(f, it.taken)).length, 0)} frames`);

  // Per section and kind the commonest look; the biggest of the common ones wins a near tie (a
  // sprite dropped by the eight-a-line limit on some frames), and a whole one over a part of it.
  const looks = new Map<string, Look>();
  for (const [key, ways] of seen) {
    const all = [...ways.values()].sort((a, b) => b.n - a.n);
    const of = all.reduce((t, w) => t + w.n, 0);
    let best = all.filter((w) => w.n >= all[0].n * 0.8).sort((a, b) => b.sprites.length - a.sprites.length)[0];
    // A look with sprites dropped (a column cut by the eight-a-line limit) is part of the whole one:
    // a look seen on 2 frames or more that holds every sprite of the chosen one wins, when what it
    // has besides is the rest of the picture — each extra sprite in the same palette, on the same
    // 8-px grid, next to one of the chosen look's (the boots: their right half on 4 frames, both on
    // 3 — the user saw the half on the page). A bird or a stone passing by is not on the grid.
    const extends_ = (big: number[][], small: number[][]) =>
      big.some((b) => {
        const dx = b[0] - small[0][0], dy = b[1] - small[0][1];
        const same = (p: number[], q: number[]) => p[0] === q[0] + dx && p[1] === q[1] + dy && p[2] === q[2] && p[3] === q[3];
        if (!small.every((q) => big.some((p) => same(p, q)))) return false;
        const extra = big.filter((p) => !small.some((q) => same(p, q)));
        // Not over a cell the picture has (a falling stone in the case's own place, section 13).
        const free = (p: number[]) => !small.some((q) => p[0] === q[0] + dx && p[1] === q[1] + dy);
        return extra.every((p) =>
          free(p) && small.some((q) => (p[3] & 3) === (q[3] & 3) && Math.abs(p[0] - q[0] - dx) <= 8 && Math.abs(p[1] - q[1] - dy) <= 8 && (p[0] - q[0] - dx) % 8 === 0 && (p[1] - q[1] - dy) % 8 === 0),
        );
      });
    for (let more = true; more; ) {
      more = false;
      for (const w of all) {
        if (w.n >= 2 && w.sprites.length > best.sprites.length && extends_(w.sprites, best.sprites)) (best = w), (more = true);
      }
    }
    // Its place: the one most frames of every look agree on, each look's frames counted by where
    // they put the chosen look's first sprite (a look without that sprite has no say).
    const votes = new Map<string, number>();
    const b0 = best.sprites[0];
    for (const w of all) {
      const p = w.sprites.find((q) => q[2] === b0[2] && q[3] === b0[3]);
      if (!p) continue;
      for (const [k, n] of w.at) {
        const [x, y] = k.split(',').map(Number);
        const at = `${x + p[0] - b0[0]},${y + p[1] - b0[1]}`;
        votes.set(at, (votes.get(at) ?? 0) + n);
      }
    }
    const [ax, ay] = [...votes].sort((a, b) => b[1] - a[1])[0][0].split(',').map(Number);
    looks.set(key, { ...best, sprites: best.sprites.map(([x, y, t, a]) => [x + ax, y + ay, t, a]), of });
  }
  // A section and kind seen on few frames (the item at the field's edge, half its sprites dropped, or the
  // player's own over it) is taken only when there is no better: first one of 20 frames or more.
  const lookFor = (s: number, kind: number): { key: string; look: Look } | null => {
    for (const least of [20, 3, 1]) {
      const tried = new Set<number>();
      for (let k: number | undefined = kind; k !== undefined && !tried.has(k); k = ITEMS[k].like) {
        tried.add(k);
        // The same section first, then the nearest.
        const order = Array.from({ length: SECTIONS }, (_, i) => i).sort((a, b) => Math.abs(a - s) - Math.abs(b - s));
        for (const t of order) {
          const look = looks.get(`${t}:${k}`);
          if (look && look.of >= least) return { key: `${t}:${k}`, look };
        }
      }
    }
    return null;
  };

  const rom = romFile();
  const chr = rom.subarray(16 + rom[4] * 0x4000);
  mkdirSync('out/levels/items', { recursive: true });
  const drawn = new Map<string, { img: string; dx: number; dy: number; w: number; h: number; from: string }>();
  const draw = (s: number, kind: number) => {
    const got = lookFor(s, kind);
    if (!got) return null;
    const name = `${got.key.replace(':', '-')}`;
    if (drawn.has(name)) return drawn.get(name)!;
    const { look } = got;
    const height = look.tall ? 16 : 8;
    const x0 = Math.min(...look.sprites.map((p) => p[0])), y0 = Math.min(...look.sprites.map((p) => p[1]));
    const w = Math.max(...look.sprites.map((p) => p[0])) + 8 - x0, h = Math.max(...look.sprites.map((p) => p[1])) + height - y0;
    const px = new Array(w * h).fill(-1);
    // Earlier sprites over later ones, as the PPU has them.
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
          if (c) px[(dy - y0 + r) * w + dx - x0 + j] = NES_RGB[look.palette[(attr & 3) * 4 + c] & 0x3f];
        }
      }
    }
    writeFileSync(`out/levels/items/${name}.png`, encodePng(px, w, h, 1));
    const d = { img: `items/${name}.png`, dx: x0, dy: y0, w, h, from: got.key };
    drawn.set(name, d);
    return d;
  };

  const out: Record<number, unknown[]> = {};
  const missing: string[] = [];
  for (const it of items) {
    const d = draw(it.s, it.kind);
    if (!d) {
      missing.push(`${it.s}:${it.kind.toString(16)}`);
      continue;
    }
    (out[it.s] ??= []).push({ row: it.row, kind: it.kind, name: ITEMS[it.kind].name, x: it.x, y: it.y, img: d.img, dx: d.dx, dy: d.dy, w: d.w, h: d.h, taken: it.taken, skipped: it.skipped, seen: it.seen ?? null });
  }
  writeFileSync('out/levels/items.json', JSON.stringify({ sections: out, phantoms }) + '\n');

  const count = (name: string) => items.filter((it) => ITEMS[it.kind].name === name).length;
  console.log(`${items.length} items: ${[...new Set(items.map((it) => ITEMS[it.kind].name))].map((n) => `${count(n)} ${n}`).join(', ')}`);
  console.log(`taken by the run: ${items.filter((it) => it.taken.length).length}`);
  for (const it of items) for (const [a, b] of it.skipped) console.log(`skipped: section ${it.s} row ${it.row} ${ITEMS[it.kind].name} at ${it.x}, ${it.y}, ${a ? `frames ${a}-${b - 1}` : 'never on the field in the run'}`);
  for (const p of phantoms) console.log(`left out: ${p}`);
  for (const [key, look] of looks) console.log(`  look ${key.split(':')[0]}:$${(+key.split(':')[1]).toString(16)} ${look.sprites.length} sprites, ${look.n} of ${look.of} frames`);
  for (const it of items) {
    const d = drawn.get(lookFor(it.s, it.kind)?.key.replace(':', '-') ?? '');
    if (d && d.from !== `${it.s}:${it.kind}`) console.log(`  section ${it.s} row ${it.row} ${ITEMS[it.kind].name}: look of ${d.from}`);
  }
  if (missing.length) console.log(`no look at all: ${missing.join(' ')}`);
}
