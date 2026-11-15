/**
 * klmz's TAS packed for the maps' page, from this NES's replay of it (in step with FCEUX: STATUS
 * §1; its sound-chip writes are FCEUX's, frame for frame: STATUS §7).
 *   node --experimental-strip-types --no-warnings src/take-pack.ts
 *
 * Per movie frame f (the take's frame f), the state the page draws the game's frame from, read on
 * line 100 of the frame (in the field, above the status bar):
 *   0 section ($040A)   1 shown: 1 while the field is the section's (the frame's tiles are the
 *   decoded map's at the camera below), 0 on story screens and fades between sections
 *   2-3 camera x, 4-5 camera y: where the field's top-left lies on the section's map, in its pixels
 *   (int16; the RAM's $18/$19 - 8, $1A/$1B, moved to where the tiles fit: STATUS §4)
 *   6 PPUCTRL  7 PPUMASK  8-9 the field's plane x (0-511) and 10-11 plane y (0-479) on line 0
 *   16-23 the CHR 1 KB bank in each slot $0000-$1FFF  32-287 the sprite memory
 *   288-319 the palette  320-4415 the four nametables as the PPU sees them (mirroring applied)
 * and the frame's sound-chip writes, each with its owner: $40 the music's (the driver's channel
 * writes, PRG $C000-$C3FF), $80 an effect's (PRG $D100-$D3FF), 0 both's (STATUS §7).
 *
 * Out: out/levels/take.bin.gz — "CHTK", u32 frames, u16 state size, then per frame: u16 count,
 * count × (u16 index, u8 value) changed since the frame before; u16 writes, writes × (u8 register
 * - $4000 | owner, u8 value). And out/levels/tas.json, the player's path per section: segments of
 * [x, y, frame], cut where it jumps.
 */
import { mkdirSync, writeFileSync } from 'node:fs';
import { gzipSync } from 'node:zlib';
import { Run } from './run.ts';
import { SECTIONS, section, tileAt, type Section } from './level.ts';

export const SIZE = 4416;
export const OAM = 32;
export const PAL = 288;
export const NT = 320;
const FIELD = 176;

const run = new Run();
const m = run.m;
const nes = m.nes as unknown as { oam: Uint8Array; line: number };
const ppu = m.ppu as unknown as { scanline(l: number): void; vram: Uint8Array; bank(n: number): number; palette: Uint8Array; ctrl: number; mask: number };
const mapper = m.nes.mapper as unknown as { chrAt(a: number): number };
const sections: Section[] = Array.from({ length: SECTIONS }, (_, i) => section(i));

const state = new Uint8Array(SIZE);
const camRam = { x: 0, y: 0 };
let pc = 0;
const writes: number[] = [];
m.hooks.exec = (p) => {
  pc = p;
};
m.hooks.write = (a, v) => {
  if (a < 0x4000 || a > 0x4017 || a === 0x4014 || a === 0x4016) return;
  const off = m.prgOffset(pc);
  const owner = off >= 0xc000 && off < 0xc400 ? 0x40 : off >= 0xd100 && off < 0xd400 ? 0x80 : 0;
  writes.push((a - 0x4000) | owner, v);
};
const scanline = ppu.scanline.bind(ppu);
ppu.scanline = (line) => {
  if (line === 0) camRam.x = ((m.ram[0x19] << 8) | m.ram[0x18]) - 8, (camRam.y = (m.ram[0x1b] << 8) | m.ram[0x1a]);
  scanline(line);
  if (line === 100) {
    state[0] = m.ram[0x40a];
    state[6] = ppu.ctrl;
    state[7] = ppu.mask;
    for (let i = 0; i < 8; i++) state[16 + i] = (mapper.chrAt(i * 0x400) >> 10) & 0xff;
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

function misses(sec: Section, x: number, y: number, stop: number): number {
  let n = 0;
  for (let ty = Math.max(0, Math.ceil(y / 8)); ty < sec.height && ty * 8 - y + 8 <= FIELD; ty++) {
    for (let tx = Math.max(0, Math.ceil(x / 8)); tx < sec.width && tx * 8 - x + 8 <= 256; tx++) {
      const want = tileAt(sec, tx, ty);
      const got = shownAt(tx * 8 - x + 4, ty * 8 - y + 4);
      if (got.tile !== want.tile || got.palette !== want.palette) if (++n >= stop) return n;
    }
  }
  return n;
}

/** Where the field lies on the section: the RAM's camera, or the place within ±16 px that fits. */
function place(sec: Section): { x: number; y: number } | null {
  if (!(state[7] & 0x08)) return null;
  let best = { x: camRam.x, y: camRam.y, n: misses(sec, camRam.x, camRam.y, 1e9) };
  for (let dy = -16; dy <= 16 && best.n > 0; dy++) {
    for (let dx = -16; dx <= 16 && best.n > 0; dx++) {
      const n = misses(sec, camRam.x + dx, camRam.y + dy, best.n);
      if (n < best.n) best = { x: camRam.x + dx, y: camRam.y + dy, n };
    }
  }
  if (best.n > 0) return null;
  // Sampling tile centres fits a range of ~8 px; the pixel is the one where the tile edges on the
  // map and in the nametable plane meet: x ≡ the plane x of line 0, y ≡ its plane y (mod 8).
  const mod8 = (v: number) => ((v % 8) + 8) % 8;
  for (let dy = -7; dy <= 7; dy++) {
    const y = best.y + dy;
    if (mod8(y - m.lineY[0]) !== 0) continue;
    for (let dx = -7; dx <= 7; dx++) {
      const x = best.x + dx;
      if (mod8(x - m.lineX[0]) === 0 && misses(sec, x, y, 1) === 0) return { x, y };
    }
  }
  return { x: best.x, y: best.y };
}

// The movie ends with the last boss alive; played on with nothing pressed he walks off the cliff
// and the ending runs (STATUS §10): 600 frames more take in his fall.
const AFTER = 600;
const total = run.pads.length + AFTER;
const out: number[] = [];
const u16 = (v: number) => out.push(v & 255, (v >> 8) & 255);
for (const c of 'CHTK') out.push(c.charCodeAt(0));
out.push(total & 255, (total >> 8) & 255, (total >> 16) & 255, 0);
u16(SIZE);
const trails = new Map<number, [number, number, number][][]>();
const seenFrames = new Map<number, number>();
let lastPt: [number, number, number] | null = null;
let shownCount = 0;
// Every frame's state is kept (≈ 4.4 KB each) to set the cameras after the pass: the place the
// tiles fit is ambiguous where the field is plain (sky, snow), and the search took a wrong one on
// some frames (the user saw the mountains slide, section 6). The field's plane and its place on the
// map differ by a constant per section (the nametables wrap the map the same way all along), so
// that constant, from the frames where the RAM's camera fits as it is, gives every frame's place:
// the one nearest the RAM's camera that the frame's scroll agrees with (STATUS §9).
const states = new Uint8Array((total + 1) * SIZE);
const sounds: number[][] = [];
const ramCam = new Int32Array((total + 1) * 2);
const exact = new Uint8Array(total + 1);
for (let f = 0; f <= total; f++) {
  writes.length = 0;
  if (f > 0) run.to(f);
  const s = state[0];
  const sec = sections[s];
  const at = f > 0 && sec && m.ram[0x40a] === s ? place(sec) : null;
  state[1] = at ? 1 : 0;
  const cx = at ? at.x : 0;
  const cy = at ? at.y : 0;
  state[2] = cx & 255, (state[3] = (cx >> 8) & 255), (state[4] = cy & 255), (state[5] = (cy >> 8) & 255);
  state[8] = m.lineX[0] & 255, (state[9] = m.lineX[0] >> 8), (state[10] = m.lineY[0] & 255), (state[11] = m.lineY[0] >> 8);
  states.set(state, f * SIZE);
  sounds.push(writes.slice());
  ramCam[2 * f] = camRam.x;
  ramCam[2 * f + 1] = camRam.y;
  exact[f] = at && at.x === camRam.x && at.y === camRam.y ? 1 : 0;
  // The player's path: X is kept mod 2048 px (STATUS §6), put back next to the camera.
  if (at) {
    shownCount++;
    seenFrames.set(s, (seenFrames.get(s) ?? 0) + 1);
    let px = ((m.ram[0x617] << 8) | m.ram[0x616]) / 32;
    const py = ((m.ram[0x61e] << 8) | m.ram[0x61d]) / 32;
    while (px < cx + 128 - 1024) px += 2048;
    // $0616-$061E is the figure's top-left corner (its sprites start there: runs/anchor.ts); the
    // path goes through the middle of the body.
    const pt: [number, number, number] = [Math.round(px) + 8, Math.round(py) + 20, f];
    if (!trails.has(s)) trails.set(s, []);
    const segs = trails.get(s)!;
    if (!lastPt || f - lastPt[2] > 2 || Math.abs(pt[0] - lastPt[0]) > 24 || Math.abs(pt[1] - lastPt[1]) > 24) segs.push([]);
    segs[segs.length - 1].push(pt);
    lastPt = pt;
  } else lastPt = null;
  if (f % 2000 === 0) console.log(`frame ${f}: ${shownCount} shown`);
}

// Per section the plane-to-map constant the frames fitting at the RAM's camera agree on.
const at = (f: number, i: number) => states[f * SIZE + i];
const i16 = (lo: number, hi: number) => (((hi << 8) | lo) << 16) >> 16;
const votes = new Map<number, Map<string, number>>();
for (let f = 0; f <= total; f++) {
  if (!exact[f]) continue;
  const s = at(f, 0);
  const k = `${(((at(f, 8) | (at(f, 9) << 8)) - ramCam[2 * f]) % 512 + 512) % 512},${(((at(f, 10) | (at(f, 11) << 8)) - ramCam[2 * f + 1]) % 240 + 240) % 240}`;
  if (!votes.has(s)) votes.set(s, new Map());
  votes.get(s)!.set(k, (votes.get(s)!.get(k) ?? 0) + 1);
}
const offset = new Map<number, { x: number; y: number }>();
for (const [s, v] of votes) {
  const [k, n] = [...v].sort((a, b) => b[1] - a[1])[0];
  const [x, y] = k.split(',').map(Number);
  offset.set(s, { x, y });
  const all = [...v.values()].reduce((a, b) => a + b, 0);
  console.log(`section ${s}: plane - map = ${x}, ${y} on ${n} of ${all} frames fitting as the RAM has it`);
}
/** The value ≡ r (mod m) nearest `near`. */
const nearest = (r: number, m: number, near: number) => near + ((((r - near) % m) + m + m / 2) % m) - m / 2;
let moved = 0;
for (let f = 0; f <= total; f++) {
  const o = offset.get(at(f, 0));
  if (!at(f, 1) || !o) continue;
  const x = nearest((at(f, 8) | (at(f, 9) << 8)) - o.x, 512, ramCam[2 * f]);
  const y = nearest((at(f, 10) | (at(f, 11) << 8)) - o.y, 240, ramCam[2 * f + 1]);
  if (x !== i16(at(f, 2), at(f, 3)) || y !== i16(at(f, 4), at(f, 5))) moved++;
  const b = f * SIZE;
  states[b + 2] = x & 255, (states[b + 3] = (x >> 8) & 255), (states[b + 4] = y & 255), (states[b + 5] = (y >> 8) & 255);
}
console.log(`${moved} frames set anew by their scroll`);

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
for (const [s, segs] of trails) levels[s + 1] = { segments: segs.filter((g) => g.length > 1), frames: seenFrames.get(s) ?? 0 };
writeFileSync('out/levels/tas.json', JSON.stringify({ source: "klmz's TAS (fceux/klmz-cliffhanger.fm2), replayed on the headless NES in step with FCEUX", levels }) + '\n');
console.log(`${total} frames, ${shownCount} with the field shown; ${(raw.length / 1e6).toFixed(1)} MB raw → out/levels/take.bin.gz`);
