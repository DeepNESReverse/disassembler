/**
 * Who reads these RAM cells (and where MMC3 bank numbers come from), on the way into a level:
 *   LEVEL=n node --experimental-strip-types src/who-reads.ts <from> <to> 0A 0B ...
 * Prints each distinct (cell, reading pc) once; and every distinct MMC3 register write
 * (R0-R7 via $8000/$8001) with the ROM origin of the value.
 */
import { romFile } from './rom.ts';
import { Machine } from './machine.ts';
import { goTo, CARD_FRAME } from './path.ts';
import { Taint, originOffset, isDerived } from './taint.ts';
import { buttonsOf } from './shots.ts';

const [fromS, toS, ...cellsS] = process.argv.slice(2);
const from = Number(fromS), to = Number(toS);
const cells = new Set(cellsS.map((c) => parseInt(c, 16)));
const h = (n: number, w = 4) => n.toString(16).toUpperCase().padStart(w, '0');
const m = new Machine(romFile());
goTo(m, CARD_FRAME);
if (process.env.LEVEL) m.ram[0xa8] = Number(process.env.LEVEL);
goTo(m, from);
const t = new Taint(m);
const read = m.hooks.read!, write = m.hooks.write!;
let pc = 0;
const exec = m.hooks.exec!;
m.hooks.exec = (p) => { exec(p); pc = p; };
const seen = new Set<string>();
const once = (k: string) => { if (seen.has(k)) return; seen.add(k); console.log(`f${m.nes.frame} ${k}`); };
let select = 0;
m.hooks.read = (a, v) => { read(a, v); if (a < 0x800 && cells.has(a)) once(`read $${h(a, 2)} by ${h(pc)}[b${m.bankAt(pc)}]`); };
m.hooks.write = (a, v) => {
  write(a, v);
  if (a >= 0x8000 && a < 0xa000) {
    if (!(a & 1)) select = v;
    else if (process.env.BANKS) {
      const op = m.peek(pc);
      const o = op === 0x8d ? t.a : op === 0x8e ? t.x : op === 0x8c ? t.y : 0;
      once(`R${select & 7}=${h(v, 2)} by ${h(pc)}[b${m.bankAt(pc)}] from ${o === 0 ? '?' : (o < 0 ? 'imm' : 'rom') + (isDerived(o) ? '*' : '') + ':' + h(originOffset(o), 5)}`);
    }
  }
};
const hold = process.env.HOLD ? buttonsOf(process.env.HOLD) : 0;
while (m.nes.frame < to) m.frame(m.nes.frame >= 1180 ? hold : 0);
