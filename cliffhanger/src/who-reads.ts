/**
 * Every data read from the PRG between two movie frames of the TAS, grouped by the instruction:
 * which PRG ranges each one reads and how many bytes.
 *   node --experimental-strip-types --no-warnings src/who-reads.ts <from> <to> [prg lo hex] [prg hi hex]
 */
import { OPCODES } from '@xromdev/cpu6502';
import { Run } from './run.ts';

const [from, to] = process.argv.slice(2, 4).map(Number);
const lo = parseInt(process.argv[4] ?? '0', 16);
const hi = parseInt(process.argv[5] ?? '40000', 16);
const run = new Run();
run.to(from);
const m = run.m;
let pc = 0;
let len = 1;
const byPc = new Map<number, { n: number; offs: Map<number, number>; x: Set<number>; y: Set<number>; prgPc: number }>();
m.hooks.exec = (p) => {
  pc = p;
  len = OPCODES[m.peek(p)].length;
};
m.hooks.read = (a) => {
  if (a < 0x8000 || (a >= pc && a < pc + len)) return;
  const off = m.prgOffset(a);
  if (off < lo || off >= hi) return;
  let e = byPc.get(pc);
  if (!e) byPc.set(pc, (e = { n: 0, offs: new Map(), x: new Set(), y: new Set(), prgPc: m.prgOffset(pc) }));
  e.n++;
  const k = off & ~0xff;
  e.offs.set(k, (e.offs.get(k) ?? 0) + 1);
  e.x.add(m.cpu.x);
  e.y.add(m.cpu.y);
};
run.to(to);
const h = (n: number, w = 4) => n.toString(16).toUpperCase().padStart(w, '0');
for (const [p, e] of [...byPc].sort((a, b) => a[0] - b[0])) {
  const offs = [...e.offs].sort((a, b) => b[1] - a[1]).slice(0, 6).map(([k, n]) => `${h(k, 5)}:${n}`).join(' ');
  console.log(`${h(p)} (prg ${h(e.prgPc, 5)}) ${e.n} reads  ${offs}  x×${e.x.size} y×${e.y.size}`);
}
