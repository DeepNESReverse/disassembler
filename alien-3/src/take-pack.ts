/**
 * A take (fceux/tas_take.play.txt: Randil's TAS as FCEUX played it, RAM every frame) packed for the
 * maps' player: per frame only the RAM the picture needs — the level ($A8), the camera ($1A-$1D),
 * the sprite page the NMI sends to the PPU ($0200-$02FF, B15:$EC79), the palette buffer
 * ($0785-$07A4, B15:$EC81) and the sprite CHR banks ($0718, $0719, $071A; R4 is the constant $7B,
 * B15:$ECDF-$ED02), the player's X/Y. Frame k's RAM is the state drawn in frame k + 1: the sprites were laid out with
 * this camera. Our NES is not run: overlaid on it, the take broke long routines (STATUS §21).
 * Out: out/levels/take/randil.bin.gz — "A3TK", u32 frames, u16 cells, the cells' addresses (u16
 * each), then a frame at a time: u16 count, count × (u16 cell index, u8 value) since the frame before.
 *   node --experimental-strip-types src/take-pack.ts [take] [out]
 */
import { mkdirSync, writeFileSync } from 'node:fs';
import { gzipSync } from 'node:zlib';
import { parseTake } from './take.ts';

export const CELLS = [
  0xa8, 0x1a, 0x1b, 0x1c, 0x1d,
  ...Array.from({ length: 256 }, (_, i) => 0x200 + i),
  ...Array.from({ length: 32 }, (_, i) => 0x785 + i),
  0x718, 0x719, 0x71a,
  // The player's X/Y: frozen through the tally and the next level's card, set anew by the loader
  // when the level starts (fceux/tas_trail-randil.txt) — the player shows the level only between.
  0x420, 0x440, 0x460, 0x480,
];
const [src = 'fceux/tas_take.play.txt', out = 'out/levels/take/randil.bin.gz'] = process.argv.slice(2);
const take = parseTake(src);
const index = new Map(CELLS.map((a, i) => [a, i]));
const ram = new Uint8Array(0x800);
const prev = new Int16Array(CELLS.length).fill(-1);
const chunks: number[] = [];
const u16 = (v: number) => chunks.push(v & 255, v >> 8);
for (const c of [0x41, 0x33, 0x54, 0x4b]) chunks.push(c);
const n = take.buttons.length;
chunks.push(n & 255, (n >> 8) & 255, (n >> 16) & 255, n >>> 24);
u16(CELLS.length);
for (const a of CELLS) u16(a);
for (let f = 0; f < n; f++) {
  for (const c of take.changes[f]) ram[c >> 8] = c & 255;
  const diff: number[] = [];
  CELLS.forEach((a, i) => { if (prev[i] !== ram[a]) { prev[i] = ram[a]; diff.push(i); } });
  u16(diff.length);
  for (const i of diff) { u16(i); chunks.push(ram[CELLS[i]]); }
}
const raw = Uint8Array.from(chunks);
mkdirSync(out.replace(/\/[^/]+$/, ''), { recursive: true });
writeFileSync(out, gzipSync(raw, { level: 9 }));
console.log(`${n} frames, ${CELLS.length} cells: ${(raw.length / 1e6).toFixed(1)} MB → ${out}`);
