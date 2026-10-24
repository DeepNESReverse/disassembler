/**
 * Who writes these RAM cells on the way into level 1, with what, and from where in the ROM:
 *   node --experimental-strip-types src/who-writes.ts <from> <to> 04 05 06 ...   (cells hex)
 */
import { Machine } from './machine.ts';
import { goTo } from './path.ts';
import { Taint, originOffset, isDerived } from './taint.ts';
import { buttonsOf } from './shots.ts';

const [fromS, toS, ...cellsS] = process.argv.slice(2);
const from = Number(fromS), to = Number(toS);
const cells = new Set(cellsS.map((c) => parseInt(c, 16)));
const m = new Machine();
const h = (n: number, w = 4) => n.toString(16).toUpperCase().padStart(w, '0');
goTo(m, from);
const t = new Taint(m);
const step = m.hooks.step!;
const seen = new Map<string, number>();
let pending: { pc: number; cell: number } | null = null;
const write = m.hooks.write!;
m.hooks.write = (a, v) => { write(a, v); if (a < 0x800 && cells.has(a)) pending = { pc: m.cpu.pc, cell: a }; };
const exec = m.hooks.exec!;
let lastPc = 0;
m.hooks.exec = (pc) => { exec(pc); lastPc = pc; };
m.hooks.step = (pc, op) => {
  step(pc, op);
  if (!pending) return;
  const { cell } = pending; pending = null;
  const o = t.ram[cell];
  const src = o === 0 ? '?' : `${o < 0 ? 'imm' : 'rom'}${isDerived(o) ? '*' : ''}:${h(originOffset(o), 5)}`;
  const key = `$${h(cell, 2)} <- pc ${h(pc)}[bank ${m.bankAt(pc)}] ${src}`;
  const prev = seen.get(key);
  if (prev === undefined) console.log(`f${m.nes.frame} ${key} = ${h(m.ram[cell], 2)}`);
  seen.set(key, (prev ?? 0) + 1);
};
const hold = process.env.HOLD ? buttonsOf(process.env.HOLD) : 0;
// The path's presses up to the level, then `HOLD` from frame 1180 on.
while (m.nes.frame < to) {
  if (m.nes.frame < 1180) goTo(m, m.nes.frame + 1);
  else m.frame(hold);
}

