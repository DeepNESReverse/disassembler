/**
 * The TAS packed for the maps' player (STATUS §5): the run on nes-explorer's core (in step with
 * FCEUX, both pads, §1), and per frame what the PPU drew it with and what the sound chip was told.
 *
 * Picture — a state of STATE_SIZE bytes, sent as the cells changed since the frame before:
 *   0-1 the camera's world x, 2-3 its world y (the top-left of the screen in the cave: plane x, and
 *   240·screen + plane y, the screen the one whose rows the nametable holds there, §3)
 *   4 1 if the frame shows the cave (background on, its rows the world's)   5 PPUCTRL   6 PPUMASK
 *   7-8 the plane x (0-511) and 9-10 plane y (0-239) every line starts from (no split, §3)
 *   11 the spelunker's screen x, 12 his y (255: not found) — the top-left of the palette-0 sprites
 *   below the status bar   16-271 the sprite memory   272-303 the palette   304-2351 both nametables.
 *
 * Sound — every write to $4000-$4013/$4015/$4017, in order, with its owner: the driver has one slot
 * a channel, its stream at ($D4+c, $D8+c); a sound starts where the game sets that pointer to an
 * immediate address (`sound-sites.ts`): a site starting two or more channels is a song (music, $40),
 * one channel an effect ($80); a write carries the owner of its channel's last start, 0 before any.
 *
 * Out: out/cave/take.bin.gz — "SPTK", u32 frames, u16 STATE_SIZE, then a frame at a time: u16 count,
 * count × (u16 cell, u8 value); u16 count, count × (u8 register | owner, u8 value).
 * Also out/cave/tas.json: the spelunker's way as the maps' TAS path, [world x, world y, frame],
 * broken where he moves more than 24 px in a frame (a life lost, a lift's top).
 *
 *   node --experimental-strip-types src/take-pack.ts
 */
import { mkdirSync, writeFileSync } from 'node:fs';
import { gzipSync } from 'node:zlib';
import { Core, parseRom } from '../../nes-explorer/src/core/core.ts';
import { romFile } from './rom.ts';
import { readMovie } from './movie.ts';
import { decode } from './level.ts';
import { soundSites } from './sound-sites.ts';

export const STATE_SIZE = 2352;
const rom = parseRom(romFile());
const sites = soundSites(rom.prg);
const core = new Core(rom);
const c = core as unknown as {
  drawLine(l: number): void; refreshAddr: number; xOffset: number; mask: number; ctrl: number; render: boolean; port2: boolean;
  oam: Uint8Array; palette: Uint8Array; ciram: Uint8Array; ram: Uint8Array;
  onWrite?: (a: number, v: number, pc: number) => void;
};
c.port2 = true;
let planeX = 0, planeY = 0, lineMask = 0, lineCtrl = 0;
const draw = c.drawLine.bind(core);
c.drawLine = (l: number) => {
  if (l === 0) {
    const v = c.refreshAddr;
    planeX = ((v >> 10) & 1) * 256 + (v & 31) * 8 + c.xOffset;
    planeY = (((v >> 11) & 1) * 240 + ((v >> 5) & 31) * 8 + ((v >> 12) & 7)) % 240;
  }
  if (l === 100) { lineMask = c.mask; lineCtrl = c.ctrl; }
  draw(l);
};
c.render = true;
const owner = [0, 0, 0, 0];
let writes: [number, number][] = [];
c.onWrite = (a, v, pc) => {
  if (a >= 0xd4 && a <= 0xd7) { const s = sites.get(pc); if (s) owner[s.channel] = s.music ? 0x40 : 0x80; return; }
  if (a < 0x4000 || a > 0x4017 || a === 0x4014 || a === 0x4016) return;
  const ch = (a - 0x4000) >> 2;
  writes.push([(a - 0x4000) | (ch < 4 ? owner[ch] : 0), v]);
};

const cart = { prg: rom.prg, chr: rom.chr };
let world = decode(cart, c.ram), worldKey = '';
const state = new Uint8Array(STATE_SIZE);
const prev = new Int16Array(STATE_SIZE).fill(-1);
const out: number[] = [];
const u16 = (v: number) => out.push(v & 255, v >> 8);
for (const ch of 'SPTK') out.push(ch.charCodeAt(0));
const movie = readMovie();
const n = movie.length;
out.push(n & 255, (n >> 8) & 255, (n >> 16) & 255, n >>> 24);
u16(STATE_SIZE);
const way: { segments: [number, number, number][][]; frames: number } = { segments: [], frames: 0 };
const owners = [0, 0, 0];
let soundDiff = 0, shown = 0;
for (const f of movie) {
  writes = [];
  core.buttons = f.buttons; core.buttons2 = f.buttons2; core.runFrame();
  const key = Buffer.from(c.ram.subarray(0x7c0, 0x800)).toString('hex');
  if (key !== worldKey) { world = decode(cart, c.ram); worldKey = key; }
  // The screen whose rows the plane holds at line 0: the best of the ten, over the row's 56 cells.
  const R = planeY >> 3;
  let k = 0, miss = 1e9;
  for (let s = 0; s < 10; s++) {
    let m = 0;
    for (let col = 0; col < 56; col++) if (world.tiles[30 * s + R][col] !== c.ciram[(col >> 5) * 0x400 + R * 32 + (col & 31)]) m++;
    if (m < miss) { miss = m; k = s; }
  }
  const ok = lineMask & 0x08 && miss <= 8 ? 1 : 0;
  const camX = planeX, camY = 240 * k + planeY;
  // The spelunker: palette-0 sprites below the status bar (sprite y ≥ 32).
  let sx = 255, sy = 255;
  for (let i = 0; i < 64; i++) {
    const y = c.oam[i * 4], a = c.oam[i * 4 + 2];
    if (y >= 0xef || y < 32 || (a & 3) !== 0) continue;
    if (y + 1 < sy || sy === 255) sy = y + 1;
    if (c.oam[i * 4 + 3] < sx) sx = c.oam[i * 4 + 3];
  }
  state[0] = camX & 255; state[1] = camX >> 8; state[2] = camY & 255; state[3] = camY >> 8;
  state[4] = ok; state[5] = lineCtrl; state[6] = lineMask;
  state[7] = planeX & 255; state[8] = planeX >> 8; state[9] = planeY; state[10] = 0;
  state[11] = sx; state[12] = sy;
  state.set(c.oam, 16);
  state.set(c.palette.subarray(0, 32), 272);
  state.set(c.ciram, 304);
  if (ok) {
    shown++;
    if (sy !== 255) {
      way.frames++;
      const p: [number, number, number] = [camX + sx + 8, camY + sy + 16, f.frame - 1];
      const seg = way.segments[way.segments.length - 1];
      const q = seg?.[seg.length - 1];
      if (!q || Math.abs(q[0] - p[0]) > 24 || Math.abs(q[1] - p[1]) > 24) way.segments.push([p]);
      else if (q[0] !== p[0] || q[1] !== p[1]) seg.push(p);
    }
  }
  const diff: number[] = [];
  for (let i = 0; i < STATE_SIZE; i++) if (prev[i] !== state[i]) { prev[i] = state[i]; diff.push(i); }
  u16(diff.length);
  for (const i of diff) { u16(i); out.push(state[i]); }
  const theirs = f.apu.map(([a, v]) => `${a}:${v}`).join();
  const ours = writes.map(([a, v]) => `${0x4000 + (a & 0x3f)}:${v}`).join();
  if (theirs !== ours && f.frame < n) soundDiff++;
  u16(writes.length);
  for (const [a, v] of writes) { out.push(a, v); owners[a & 0x40 ? 0 : a & 0x80 ? 1 : 2]++; }
}
const raw = Uint8Array.from(out);
mkdirSync('out/cave', { recursive: true });
const gz = gzipSync(raw, { level: 9 });
writeFileSync('out/cave/take.bin.gz', gz);
writeFileSync('out/cave/tas.json', JSON.stringify({ levels: { 1: way } }));
console.log(`${n} frames (${shown} show the cave): ${(raw.length / 1e6).toFixed(1)} MB, gzip ${(gz.length / 1e6).toFixed(2)} MB; sound writes music ${owners[0]}, effects ${owners[1]}, both ${owners[2]}; frames whose writes differ from FCEUX's: ${soundDiff}; path ${way.segments.length} segments`);
