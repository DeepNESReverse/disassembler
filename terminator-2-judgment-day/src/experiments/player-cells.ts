/**
 * Which RAM words hold the player's place: over the capture's frames in an area, the 16-bit values
 * (lo at a, hi at a + k) that stay within the screen of the camera ($C4-$C7 + 13, -3) on every
 * frame and move the most.
 *   node --experimental-strip-types --no-warnings src/experiments/player-cells.ts <from> <to>
 */
import { readCapture } from '../capture.ts';

const [from, to] = process.argv.slice(2).map(Number);
const HI = [1, 0x10, 0x20, 0x40, 0x80];
type S = { ok: boolean; min: number; max: number; moves: number; last: number };
const xs = new Map<string, S>();
const ys = new Map<string, S>();
const note = (map: Map<string, S>, k: string, rel: number, v: number, span: number) => {
  let s = map.get(k);
  if (!s) map.set(k, (s = { ok: true, min: Infinity, max: -Infinity, moves: 0, last: v }));
  if (rel < -16 || rel > span + 16) s.ok = false;
  s.min = Math.min(s.min, rel);
  s.max = Math.max(s.max, rel);
  if (v !== s.last) s.moves++;
  s.last = v;
};
for (const c of readCapture()) {
  if (c.frame < from) continue;
  if (c.frame > to) break;
  const r = c.ram;
  const cx = ((r[0xc5] << 8) | r[0xc4]) + 13;
  const cy = ((r[0xc7] << 8) | r[0xc6]) - 3;
  for (let a = 0x300; a < 0x800; a++) for (const k of HI) {
    if (a + k >= 0x800) continue;
    const v = r[a] | (r[a + k] << 8);
    note(xs, `${a.toString(16)}+${k.toString(16)}`, v - cx, v, 256);
    note(ys, `${a.toString(16)}+${k.toString(16)}`, v - cy, v, 224);
  }
}
for (const [name, map] of [['x', xs], ['y', ys]] as const) {
  const best = [...map].filter(([, s]) => s.ok && s.max - s.min > 24).sort((p, q) => q[1].moves - p[1].moves).slice(0, 12);
  console.log(name, best.map(([k, s]) => `${k} (${s.min}..${s.max}, ${s.moves} moves)`).join('  '));
}
