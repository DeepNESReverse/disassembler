/**
 * The TAS packed for the maps' player (STATUS §4): the run replayed exactly (replay.ts), and per
 * frame what the PPU drew it with and what the sound chip was told.
 *
 * Picture — a state of STATE_SIZE bytes, sent as the cells changed since the frame before:
 *   0 the stage less one ($0064)   1 the game phase ($0000)   2-3 the field's camera (the camera of
 *   the frame before, $006B:$006A: the field is drawn at it, STATUS §3)   4 1 if this frame's field
 *   was drawn at that camera   5 PPUCTRL and 6 PPUMASK on line 100   7 Charlie's screen X ($0074)
 *   8 his Y ($0073)   16-271 the sprite memory (OAM) as drawn   272-303 the palette   304-2351 the
 *   two nametable pages.
 *
 * Sound — every write to $4000-$4013/$4015/$4017 the frame made, in order, each with its owner: the
 * driver ($F87C) keeps one slot per channel (X = $10 + $11·channel, its sound's number at $02,X);
 * a request ($F80D) is a byte whose top two bits are the channel. Music: the stage themes (14-19 on
 * pulse 2 and the triangle) and the start/goal jingle (20 on pulse 2, 21 on the noise); effects: the
 * rest (1-6 on pulse 1, 7 the bonus count on pulse 2). A write while the slot holds no sound (a
 * stop, the power-on set-up) is both's.
 * Checked: the writes are FCEUX's, frame by frame (movie_capture.lua's `a` lines).
 *
 * Out: out/stages/take.bin.gz — "CCTK", u32 frames, u16 STATE_SIZE, then a frame at a time:
 * u16 count, count × (u16 cell, u8 value); u16 count, count × (u8 register | owner, u8 value) with
 * the register $00-$17 and the owner $40 music, $80 effect, 0 both.
 *
 *   node --experimental-strip-types src/take-pack.ts
 */
import { mkdirSync, writeFileSync } from 'node:fs';
import { gzipSync } from 'node:zlib';
import { replay, cameraOf, FIELD_TOP } from './replay.ts';

export const STATE_SIZE = 2352;
const MUSIC = new Set([14, 15, 16, 17, 18, 19, 20, 21]);

const r = replay();
const c = r.core as unknown as { ram: Uint8Array; oam: Uint8Array; palette: Uint8Array; ciram: Uint8Array; instrPc: number; onWrite?: (a: number, v: number, pc: number) => void };
let writes: [number, number][] = [];
c.onWrite = (a, v, pc) => {
  if (a < 0x4000 || a > 0x4017 || a === 0x4014 || a === 0x4016) return;
  let owner = 0;
  const ch = (a - 0x4000) >> 2;
  if (ch < 4) {
    // In the request ($F80D-$F877) the new sound is in $2F; elsewhere the slot's own.
    const id = pc >= 0xf80d && pc < 0xf878 ? c.ram[0x2f] & 0x3f : c.ram[0x02 + 0x10 + 0x11 * ch];
    if (id) owner = MUSIC.has(id) ? 0x40 : 0x80;
  }
  writes.push([(a - 0x4000) | owner, v]);
};

const state = new Uint8Array(STATE_SIZE);
const prev = new Int16Array(STATE_SIZE).fill(-1);
const out: number[] = [];
const u16 = (v: number) => out.push(v & 255, v >> 8);
for (const ch of 'CCTK') out.push(ch.charCodeAt(0));
const n = r.movie.length;
out.push(n & 255, (n >> 8) & 255, (n >> 16) & 255, n >>> 24);
u16(STATE_SIZE);
let prevCam = 0;
let soundDiff = 0;
const owners = [0, 0, 0];
for (const f of r.movie) {
  writes = [];
  r.core.buttons = f.buttons;
  r.core.runFrame();
  const ram = c.ram;
  const cam = prevCam;
  prevCam = cameraOf(ram);
  let ok = 1;
  for (let l = FIELD_TOP; l < 240; l++) if (r.lineX[l] !== cam % 512 || r.lineY[l] !== l) ok = 0;
  state[0] = ram[0x64];
  state[1] = ram[0];
  state[2] = cam & 255;
  state[3] = cam >> 8;
  state[4] = ok;
  state[5] = r.lineCtrl[100];
  state[6] = r.lineMask[100];
  state[7] = ram[0x74];
  state[8] = ram[0x73];
  state.set(c.oam, 16);
  state.set(c.palette.subarray(0, 32), 272);
  state.set(c.ciram, 304);
  const diff: number[] = [];
  for (let i = 0; i < STATE_SIZE; i++) if (prev[i] !== state[i]) { prev[i] = state[i]; diff.push(i); }
  u16(diff.length);
  for (const i of diff) { u16(i); out.push(state[i]); }
  // FCEUX's writes of the same frame (the last frame's line was cut off: not compared).
  const theirs = f.apu.map(([a, v]) => `${a}:${v}`).join();
  const ours = writes.map(([a, v]) => `${0x4000 + (a & 0x3f)}:${v}`).join();
  if (theirs !== ours && f.frame < n) soundDiff++;
  u16(writes.length);
  for (const [a, v] of writes) { out.push(a, v); owners[a & 0x40 ? 0 : a & 0x80 ? 1 : 2]++; }
}
const raw = Uint8Array.from(out);
mkdirSync('out/stages', { recursive: true });
const gz = gzipSync(raw, { level: 9 });
writeFileSync('out/stages/take.bin.gz', gz);
console.log(`${n} frames: ${(raw.length / 1e6).toFixed(1)} MB, gzip ${(gz.length / 1e6).toFixed(2)} MB; sound writes music ${owners[0]}, effects ${owners[1]}, both ${owners[2]}; frames whose writes differ from FCEUX's: ${soundDiff}`);
