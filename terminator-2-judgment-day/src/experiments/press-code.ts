/**
 * The code a button press runs: the instructions executed on the frame the TAS presses B (and the
 * few after) at two places of the run, and the ones only one of them runs — to find where the game
 * decides between a punch (level 1) and a shot (later levels).
 *   node --experimental-strip-types --no-warnings src/experiments/press-code.ts <near frame A> <near frame B>
 */
import { Run } from '../run.ts';

const [nearA, nearB] = process.argv.slice(2).map(Number);
const run = new Run();
const pressAt = (near: number) => {
  for (let f = near; f < near + 2000; f++) if (run.pads[f] & 2 && !(run.pads[f - 1] & 2)) return f;
  throw new Error('no B press');
};
function traced(at: number): Set<number> {
  const r = new Run();
  r.to(at - 2);
  const pcs = new Set<number>();
  r.m.hooks.exec = (p) => pcs.add(r.m.prgOffset(p) | (p < 0x8000 ? 0x100000 : 0));
  r.to(at + 3);
  return pcs;
}
const fa = pressAt(nearA), fb = pressAt(nearB);
const a = traced(fa), b = traced(fb);
const onlyA = [...a].filter((p) => !b.has(p)).sort((p, q) => p - q);
const onlyB = [...b].filter((p) => !a.has(p)).sort((p, q) => p - q);
const ranges = (l: number[]) => {
  const out: string[] = [];
  let s = -1, e = -1;
  for (const p of l) { if (p - e > 6) { if (s >= 0) out.push(s.toString(16) + (e > s ? '-' + e.toString(16) : '')); s = p; } e = p; }
  if (s >= 0) out.push(s.toString(16) + (e > s ? '-' + e.toString(16) : ''));
  return out.join(' ');
};
console.log(`B pressed on ${fa} and ${fb}`);
console.log(`only at ${fa} (PRG): ${ranges(onlyA)}`);
console.log(`only at ${fb} (PRG): ${ranges(onlyB)}`);
