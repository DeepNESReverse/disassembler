/**
 * goofydylan8's TAS packed for the maps' page, from this NES's replay of it (in step with FCEUX:
 * STATUS §3; its sound-chip writes are FCEUX's on 42 792 of 42 822 frames: STATUS §8).
 *   node --experimental-strip-types --no-warnings src/take-pack.ts
 *
 * Per movie frame f, the state the page draws the game's frame from (STATUS §8):
 *   0 the area's header (`$A3E0`'s last load; 255 before the first)   1 shown: 1 while the field
 *   (lines 0-219) is the area's map at the place below, 0 on text screens, fades, the explosion
 *   2-3 x, 4-5 y: where the field's top-left lies on the header's map (out/levels/<h>.png), int16
 *   6 PPUCTRL  7 PPUMASK (line 100)  8-9 the field's plane x (0-511), 10-11 plane y (0-479) at its top,
 *   from line 120's scroll (line 0's may differ on frames where the scroll is set late)
 *   12 the number of CHR bank runs over the field, 16-87 the runs: 9 bytes each, the first line and
 *   the 1 KB CHR bank in each slot $0000-$1FFF (the scanline IRQ switches the sprites' slot 4 mid-
 *   frame, and the steel mill's background slots 2-3 from line 179)
 *   96-351 the sprite memory   352-383 the palette   384-4479 the four nametables (mirroring applied)
 * and the frame's sound-chip writes, each with its owner by the driver's code that made it: $40 the
 * music's (its four streams' code, PRG $10113-$10333 and $10545-$1097D), $80 an effect's (effect 2,
 * $10334-$10544; effect 1, $1097E-$10ACF), 0 else (the driver's start, stop and shared end).
 *
 * Out: out/levels/take.bin.gz — "T2TK", u32 frames, u16 state size, then per frame: u16 count,
 * count × (u16 index, u8 value) changed since the frame before; u16 writes, writes × (u8 register
 * - $4000 | owner, u8 value). And out/levels/tas.json, the player's path per map (the page's level:
 * 1-9 in the game's order, level.ts ORDER): segments of [x, y, frame] on the map, cut where it jumps.
 */
import { mkdirSync, writeFileSync } from 'node:fs';
import { gzipSync } from 'node:zlib';
import { Run } from './run.ts';
import { BIKE, HEADERS, ORDER, area, tileAt, type Area } from './level.ts';
import { readFileSync } from 'node:fs';

import { BANKS, FIELD, NT, OAM, SIZE } from './take-pack-layout.ts';
/** Where the flood channel's corridor map lies in its world (written by src/bike-corridor.ts). */
const corridor = JSON.parse(readFileSync('out/levels/6-corridor.json', 'utf8')) as { x: number; y: number };

const run = new Run();
const m = run.m;
const nes = m.nes as unknown as { oam: Uint8Array };
const ppu = m.ppu as unknown as { scanline(l: number): void; vram: Uint8Array; bank(n: number): number; palette: Uint8Array; ctrl: number; mask: number };
const mapper = m.nes.mapper as unknown as { chrAt(a: number): number };
const areas: Area[] = Array.from({ length: HEADERS }, (_, h) => area(h));

const state = new Uint8Array(SIZE);
let pc = 0;
let loaded = 255;
/** Loads of a header so far: a visit to an area is the frames between two loads. */
let loads = 0;
const writes: number[] = [];
const ownerCount = [0, 0, 0];
m.hooks.exec = (p) => {
  pc = p;
  if (p === 0xa3e0 && m.prgOffset(p) === 0x63e0) (loaded = m.cpu.x >> 1), loads++;
};
m.hooks.write = (a, v) => {
  if (a < 0x4000 || a > 0x4017 || a === 0x4014 || a === 0x4016) return;
  const o = m.prgOffset(pc);
  const effect = (o >= 0x10334 && o < 0x10545) || (o >= 0x1097e && o < 0x10ad0);
  const music = (o >= 0x10113 && o < 0x10334) || (o >= 0x10545 && o < 0x1097e);
  const owner = effect ? 0x80 : music ? 0x40 : 0;
  ownerCount[effect ? 2 : music ? 1 : 0]++;
  writes.push((a - 0x4000) | owner, v);
};
const camNow = () => ({ x: (m.ram[0xc5] << 8) | m.ram[0xc4], y: (m.ram[0xc7] << 8) | m.ram[0xc6] });
let nmiCam = { x: 0, y: 0 };
let scrolled = false;
const prevWrite = m.hooks.write;
m.hooks.write = (a, v) => {
  if (a === 0x2005 && !scrolled && m.nes.line >= 241) {
    scrolled = true;
    nmiCam = camNow();
  }
  prevWrite(a, v);
};
let frameCam = { x: 0, y: 0 };
let runs = 0;
let lastBanks = '';
const scanline = ppu.scanline.bind(ppu);
ppu.scanline = (line) => {
  if (line === 0) {
    frameCam = nmiCam;
    scrolled = false;
    runs = 0;
    lastBanks = '';
  }
  scanline(line);
  if (line < FIELD) {
    const banks = [0, 1, 2, 3, 4, 5, 6, 7].map((i) => (mapper.chrAt(i * 0x400) >> 10) & 0xff);
    const k = banks.join(',');
    if (k !== lastBanks && runs < 8) {
      lastBanks = k;
      state[BANKS + 9 * runs] = line;
      state.set(banks, BANKS + 9 * runs + 1);
      runs++;
    }
  }
  if (line === 100) {
    state[6] = ppu.ctrl;
    state[7] = ppu.mask;
    state.set(nes.oam, OAM);
    state.set(ppu.palette, PAL);
    for (let n = 0; n < 4; n++) state.set(ppu.vram.subarray(ppu.bank(n), ppu.bank(n) + 0x400), NT + n * 0x400);
  }
};

/** The tile and palette the frame shows at field pixel (sx, sy), through line sy's scroll. */
function shownAt(sx: number, sy: number) {
  const px = (m.lineX[sy] + sx) & 511;
  const py = m.lineY[sy] % 480;
  const n = (px >> 8) | (py >= 240 ? 2 : 0);
  const col = (px & 255) >> 3;
  const row = (py % 240) >> 3;
  const base = NT + n * 0x400;
  const attr = state[base + 0x3c0 + (row >> 2) * 8 + (col >> 2)];
  return { tile: state[base + row * 32 + col], palette: (attr >> ((((row >> 1) & 1) << 2) | (((col >> 1) & 1) << 1))) & 3 };
}

/** Tiles of the area apart at map place (x, y), and how many were looked at. */
function misses(a: Area, x: number, y: number, stop = Infinity): { n: number; all: number } {
  let n = 0;
  let all = 0;
  for (let ty = Math.max(0, Math.ceil(y / 8)); ty < a.rows * 2 && ty * 8 - y + 8 <= FIELD; ty++) {
    for (let tx = Math.max(0, Math.ceil(x / 8)); tx < a.cols * 2 && tx * 8 - x + 8 <= 256; tx++) {
      all++;
      const want = tileAt(a, tx, ty);
      // Two points of the tile, near its top-left and bottom-right corners: both fall in the same
      // tile of the nametable only at the exact place (one point at the centre fits ±4 px).
      const p = shownAt(tx * 8 - x + 1, ty * 8 - y + 1);
      const q = shownAt(tx * 8 - x + 6, ty * 8 - y + 6);
      const bad = p.tile !== want.tile || p.palette !== want.palette || q.tile !== want.tile || q.palette !== want.palette;
      if (bad) if (++n >= stop) return { n, all };
    }
  }
  return { n, all };
}

/**
 * The camera offset the picture sits at (STATUS §6, §8): (16, 0), the elevator shaft (40, 0). The
 * tile test passes anywhere from 3 px before to 4 px after it; the place itself is where the map's
 * tile edges and the nametable's meet.
 */
const offsetOf = (h: number) => ({ x: h === 3 ? 40 : 16, y: 0 });

const total = run.pads.length;
const states = new Uint8Array((total + 1) * SIZE);
const sounds: number[][] = [];
const ramCam = new Int32Array((total + 1) * 2);
const exact = new Uint8Array(total + 1);
const player = new Int32Array((total + 1) * 2);
const visit = new Int32Array(total + 1);
for (let f = 0; f <= total; f++) {
  writes.length = 0;
  if (f > 0) run.to(f);
  state[0] = loaded;
  state[12] = runs;
  const planeX0 = m.lineX[120];
  const planeY0 = (((m.lineY[120] - 120) % 480) + 480) % 480;
  state[8] = planeX0 & 255, (state[9] = planeX0 >> 8), (state[10] = planeY0 & 255), (state[11] = planeY0 >> 8);
  const o = loaded < HEADERS ? offsetOf(loaded) : { x: 0, y: 0 };
  ramCam[2 * f] = frameCam.x + o.x;
  ramCam[2 * f + 1] = frameCam.y + o.y;
  exact[f] = loaded < HEADERS && state[7] & 0x08 && misses(areas[loaded], ramCam[2 * f], ramCam[2 * f + 1], 1).n === 0 ? 1 : 0;
  // On the bike the picture runs up to 12 px from the RAM's camera (STATUS §6): the place within
  // ±16 px where every tile fits votes instead.
  if (!exact[f] && loaded === 6 && state[7] & 0x08) {
    search: for (let dy = -16; dy <= 16; dy++) for (let dx = -16; dx <= 16; dx++) {
      const x = ramCam[2 * f] + dx;
      const y = ramCam[2 * f + 1] + dy;
      const r = misses(areas[6], x, y, 1);
      if (r.n === 0 && r.all > 0) {
        exact[f] = 1;
        ramCam[2 * f] = x;
        ramCam[2 * f + 1] = y;
        break search;
      }
    }
  }
  visit[f] = loads;
  player[2 * f] = m.ram[0x427] | (m.ram[0x428] << 8);
  player[2 * f + 1] = m.ram[0x447] | (m.ram[0x448] << 8);
  states.set(state, f * SIZE);
  sounds.push(writes.slice());
  if (f % 5000 === 0) console.log(`frame ${f}`);
}

// The constant between the field's plane and its place on the map, from the frames that fit at the
// RAM's camera as it is. It holds through a visit — the nametables hold the map the same way from
// one load of the area to the next — but not from visit to visit: each load lays the map into the
// nametables anew (STATUS §8). Per visit, then, and per header where a visit has no fitting frame.
const at = (f: number, i: number) => states[f * SIZE + i];
const votesOf = (map: Map<number, Map<string, number>>, key: number, k: string) => {
  if (!map.has(key)) map.set(key, new Map());
  map.get(key)!.set(k, (map.get(key)!.get(k) ?? 0) + 1);
};
const byVisit = new Map<number, Map<string, number>>();
const byHeader = new Map<number, Map<string, number>>();
for (let f = 0; f <= total; f++) {
  if (!exact[f]) continue;
  const k = `${(((at(f, 8) | (at(f, 9) << 8)) - ramCam[2 * f]) % 512 + 512) % 512},${(((at(f, 10) | (at(f, 11) << 8)) - ramCam[2 * f + 1]) % 240 + 240) % 240}`;
  votesOf(byVisit, visit[f], k);
  votesOf(byHeader, at(f, 0), k);
}
const top = (v: Map<string, number>) => {
  const [k, n] = [...v].sort((p, q) => q[1] - p[1])[0];
  const [x, y] = k.split(',').map(Number);
  // The tile test fits a range of 8 px; the field's plane and the map are on the same 8-px grid, so
  // the constant is the multiple of 8 within it (a vote lies 4 below to 3 above it).
  const snap = (c: number) => (Math.floor((c + 4) / 8) * 8) % 512;
  return { x: snap(x), y: snap(y) % 240, n, all: [...v.values()].reduce((p, q) => p + q, 0) };
};
for (const [h, v] of [...byHeader].sort((p, q) => p[0] - q[0])) {
  const t = top(v);
  const visits = new Set<number>();
  for (let f = 0; f <= total; f++) if (exact[f] && at(f, 0) === h) visits.add(visit[f]);
  const kinds = new Set([...visits].map((i) => { const u = top(byVisit.get(i)!); return `${u.x},${u.y}`; }));
  console.log(`header ${h}: plane - map = ${t.x}, ${t.y} on ${t.n} of ${t.all} fitting frames; ${visits.size} visits, ${kinds.size} constants (${[...kinds].join(' ')})`);
}
const constantOf = (f: number) => {
  // TRY=h,x,y: that constant for header h instead (to compare places).
  const t = process.env.TRY?.split(',').map(Number);
  if (t && at(f, 0) === t[0]) return { x: t[1], y: t[2], n: 0, all: 0 };
  const v = byVisit.get(visit[f]);
  if (v) return top(v);
  const h = byHeader.get(at(f, 0));
  return h ? top(h) : undefined;
};
/** The value ≡ r (mod md) nearest `near`. */
const nearest = (r: number, md: number, near: number) => near + ((((r - near) % md) + md + md / 2) % md) - md / 2;

// Each frame placed by its own scroll, then kept as shown where the tiles agree with the map there.
// The state is re-read through a fresh pass of the NES's lines for `misses`: it reads `m.lineX/Y`,
// which hold the last frame only — so the check is done on the saved nametables with the saved
// line-0 scroll (one scroll over the field, STATUS §6).
const shownCount = new Map<number, number>();
/** Per header: shown frames with tiles apart from the map at the place given, and those tiles. */
const apart = new Map<number, [number, number]>();
const trails = new Map<number, [number, number, number][][]>();
let lastPt: [number, number, number] | null = null;
let shownFrames = 0;
for (let f = 0; f <= total; f++) {
  const b = f * SIZE;
  const h = at(f, 0);
  const c = constantOf(f);
  if (h >= HEADERS || !c || !(at(f, 7) & 0x08)) {
    states[b + 1] = 0;
    lastPt = null;
    continue;
  }
  const planeX = at(f, 8) | (at(f, 9) << 8);
  const planeY = at(f, 10) | (at(f, 11) << 8);
  const x = nearest(planeX - c.x, 512, ramCam[2 * f]);
  const y = nearest(planeY - c.y, 240, ramCam[2 * f + 1]);
  state.set(states.subarray(b, b + SIZE));
  for (let l = 0; l < FIELD; l++) (m.lineX[l] = planeX), (m.lineY[l] = (planeY + l) % 480);
  const { n, all } = misses(areas[h], x, y);
  const shown = all > 0 && n * 2 < all ? 1 : 0;
  states[b + 1] = shown;
  states[b + 2] = x & 255, (states[b + 3] = (x >> 8) & 255), (states[b + 4] = y & 255), (states[b + 5] = (y >> 8) & 255);
  if (!shown) {
    lastPt = null;
    continue;
  }
  shownFrames++;
  shownCount.set(h, (shownCount.get(h) ?? 0) + 1);
  if (n) apart.set(h, [(apart.get(h)?.[0] ?? 0) + 1, (apart.get(h)?.[1] ?? 0) + n]);
  // The player's place in the camera's own terms, moved as the field was moved onto the map; the
  // path goes through the middle of the body ($0447 is the feet).
  const px = player[2 * f] + (x - ramCam[2 * f]);
  const py = player[2 * f + 1] + (y - ramCam[2 * f + 1]) - 20;
  // The flood channel's map is the corridor cut out of its world (src/bike-corridor.ts).
  const o = h === BIKE ? corridor : { x: 0, y: 0 };
  const pt: [number, number, number] = [px - o.x, py - o.y, f];
  if (!trails.has(h)) trails.set(h, []);
  const segs = trails.get(h)!;
  if (!lastPt || f - lastPt[2] > 2 || Math.abs(pt[0] - lastPt[0]) > 24 || Math.abs(pt[1] - lastPt[1]) > 24) segs.push([]);
  segs[segs.length - 1].push(pt);
  lastPt = pt;
}

const out: number[] = [];
const u16 = (v: number) => out.push(v & 255, (v >> 8) & 255);
for (const ch of 'T2TK') out.push(ch.charCodeAt(0));
out.push(total & 255, (total >> 8) & 255, (total >> 16) & 255, 0);
u16(SIZE);
const prev = new Uint8Array(SIZE);
for (let f = 0; f <= total; f++) {
  const cur = states.subarray(f * SIZE, (f + 1) * SIZE);
  const diff: number[] = [];
  for (let i = 0; i < SIZE; i++) if (cur[i] !== prev[i]) diff.push(i);
  prev.set(cur);
  u16(diff.length);
  for (const i of diff) u16(i), out.push(cur[i]);
  u16(sounds[f].length / 2);
  for (const v of sounds[f]) out.push(v);
}
const raw = Uint8Array.from(out);
mkdirSync('out/levels', { recursive: true });
writeFileSync('out/levels/take.bin.gz', gzipSync(raw, { level: 9 }));
const levels: Record<number, { segments: [number, number, number][][]; frames: number }> = {};
for (const [h, segs] of trails) levels[ORDER.indexOf(h) + 1] = { segments: segs.filter((g) => g.length > 1), frames: shownCount.get(h) ?? 0 };
writeFileSync('out/levels/tas.json', JSON.stringify({ source: "goofydylan8's TAS (fceux/goofydylan8-terminator2.fm2), replayed on the headless NES in step with FCEUX", levels }) + '\n');
console.log(`sound writes: ${ownerCount[1]} music, ${ownerCount[2]} effects, ${ownerCount[0]} neither`);
console.log(`${total} frames, ${shownFrames} with the field shown; ${(raw.length / 1e6).toFixed(1)} MB raw → out/levels/take.bin.gz`);
for (const [h, n] of [...shownCount].sort((p, q) => p[0] - q[0])) {
  const [fa, ta] = apart.get(h) ?? [0, 0];
  console.log(`   header ${h}: ${n} frames shown, ${fa} of them with ${ta} tiles apart from the map`);
}
