/**
 * The reads of the PPU and sound/pad ports (and of $6000-$7FFF) in movie frames [from, to], with
 * the line, the instruction and the value: what, besides the RAM, a frame's way depends on.
 *   node --experimental-strip-types --no-warnings src/experiments/io-reads.ts <from> <to>
 */
import { Run } from '../run.ts';

const [from, to] = process.argv.slice(2).map(Number);
const run = new Run();
run.to(from - 1);
const m = run.m;
let pc = 0;
m.hooks.exec = (p) => {
  pc = p;
};
const seen = new Map<string, string[]>();
m.hooks.read = (a, v) => {
  const io = (a >= 0x2000 && a < 0x8000 && a !== 0x4016 && a !== 0x4017);
  if (!io || a === pc || a === pc + 1 || a === pc + 2) return;
  const k = `${run.frame + 1} $${a.toString(16)} by $${pc.toString(16)}`;
  if (!seen.has(k)) seen.set(k, []);
  seen.get(k)!.push(`${v.toString(16)}@${m.nes.line}`);
};
run.to(to);
for (const [k, vs] of seen) console.log(`${k}: ${vs.length} reads, ${[...new Set(vs.map((v) => v.split('@')[0]))].join('/')} — lines ${vs[0].split('@')[1]}..${vs[vs.length - 1].split('@')[1]}`);
