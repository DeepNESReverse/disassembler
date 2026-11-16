/**
 * The code a press of B adds: the instructions run on the frame the TAS presses B (after the frame
 * near `near`) against the frame before it, same place, same level — the attack's code, by PRG offset.
 *   node --experimental-strip-types --no-warnings src/experiments/press-diff.ts <near>
 */
import { Run } from '../run.ts';

const near = Number(process.argv[2]);
const run = new Run();
let at = near;
while (!(run.pads[at] & 2 && !(run.pads[at - 1] & 2))) at++;
run.to(at - 3);
const frames = new Map<number, Set<number>>();
run.m.hooks.exec = (p) => {
  const f = run.frame + 1;
  if (!frames.has(f)) frames.set(f, new Set());
  frames.get(f)!.add(run.m.prgOffset(p) | (p < 0x8000 ? 0x100000 : 0));
};
run.to(at + 2);
const ranges = (l: number[]) => {
  const out: string[] = [];
  let s = -1, e = -1;
  for (const p of l) { if (p - e > 6) { if (s >= 0) out.push(s.toString(16) + (e > s ? '-' + e.toString(16) : '')); s = p; } e = p; }
  if (s >= 0) out.push(s.toString(16) + (e > s ? '-' + e.toString(16) : ''));
  return out.join(' ');
};
const before = frames.get(at - 1)!;
for (const f of [at - 1, at, at + 1, at + 2]) {
  const only = [...(frames.get(f) ?? [])].filter((p) => !before.has(p)).sort((p, q) => p - q);
  console.log(`frame ${f}${f === at ? ' (B pressed)' : ''}: not run on ${at - 1}: ${ranges(only)}`);
}
