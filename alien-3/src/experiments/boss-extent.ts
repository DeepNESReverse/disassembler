/**
 * The boss rooms (every third level, header $9BC0): which layout bytes the strip builder reads
 * (B15:$EB94) and where the camera goes, from the real start, wandering 6000 frames.
 *   node --experimental-strip-types src/experiments/boss-extent.ts <level 1-12>
 */
import { BUTTON } from '../machine.ts';
import { cardState } from '../teleport.ts';
import { Level } from '../level.ts';

const n = Number(process.argv[2]) - 1;
const { m } = cardState(n);
const level = new Level(m.cart.prg, n);
let pc = 0;
const cols = new Set<number>(), rows = new Set<number>();
let below = 0;
m.hooks.exec = (p) => { pc = p; };
m.hooks.read = (a) => {
  if (pc !== 0xeb94 || a === 0xeb94 || a === 0xeb95 || a === 0x7e || a === 0x7f) return;
  const o = a - level.header.layout;
  if (o < 0) { below++; return; }
  cols.add(o % 64); rows.add(Math.floor(o / 64));
};
let minX = 1e9, maxX = -1e9, minY = 1e9, maxY = -1e9;
let seed = 7;
const rand = () => ((seed = (seed * 1103515245 + 12345) >>> 0) / 2 ** 32);
const dirs = [BUTTON.right, BUTTON.left, BUTTON.down, BUTTON.up, BUTTON.right | BUTTON.up, BUTTON.left | BUTTON.down];
let left = 0, held = 0;
m.frames(1180 - 900);
for (let f = 0; f < 6000; f++) {
  if (left-- <= 0) { held = dirs[Math.floor(rand() * dirs.length)] | (rand() < 0.5 ? BUTTON.B : 0); left = 20 + Math.floor(rand() * 100); }
  m.frame(held | (rand() < 0.05 ? BUTTON.A : 0));
  const r = m.ram;
  if (r[0xa8] !== n) break;
  const x = ((r[0x1a] | (r[0x1b] << 8)) << 16) >> 16, y = ((r[0x1c] | (r[0x1d] << 8)) << 16) >> 16;
  minX = Math.min(minX, x); maxX = Math.max(maxX, x); minY = Math.min(minY, y); maxY = Math.max(maxY, y);
}
const s = (set: Set<number>) => { const v = [...set].sort((a, b) => a - b); return v.length ? `${v[0]}..${v[v.length - 1]} (${v.length})` : 'none'; };
console.log(`level ${n + 1}: layout $${level.header.layout.toString(16)}, camera X ${minX}..${maxX}, Y ${minY}..${maxY}; layout columns read ${s(cols)}, rows ${s(rows)}, reads before the layout ${below}`);
