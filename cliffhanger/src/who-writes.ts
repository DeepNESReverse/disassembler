/**
 * Who writes RAM cells between two movie frames of the TAS, with the value and where it came from:
 *   node --experimental-strip-types --no-warnings src/who-writes.ts <from> <to> <lo hex> [hi hex]
 */
import { Run } from './run.ts';
import { Taint, originOffset, isDerived } from './taint.ts';

const [from, to] = process.argv.slice(2, 4).map(Number);
const lo = parseInt(process.argv[4], 16);
const hi = parseInt(process.argv[5] ?? process.argv[4], 16);
const run = new Run();
run.to(from);
const m = run.m;
const t = new Taint(m);
t.logWrites = false;
const h = (n: number, w = 4) => n.toString(16).toUpperCase().padStart(w, '0');
let pc = 0;
const exec = m.hooks.exec!;
m.hooks.exec = (p) => {
  pc = p;
  exec(p);
};
const step = m.hooks.step!;
const pending: [number, number][] = [];
const write = m.hooks.write!;
m.hooks.write = (a, v) => {
  write(a, v);
  if (a >= lo && a <= hi) pending.push([a, v]);
};
m.hooks.step = (p, op) => {
  step(p, op);
  for (const [a, v] of pending.splice(0)) {
    const o = t.ram[a & 0x7ff];
    const src = o === 0 ? '?' : `${o < 0 ? 'imm' : 'data'}${isDerived(o) ? '*' : ''} prg ${h(originOffset(o), 5)}`;
    console.log(`frame ${run.frame + 1} $${h(p)} (prg ${h(m.prgOffset(p), 5)}) ${h(a)}=${h(v, 2)}  ${src}`);
  }
};
run.to(to);
