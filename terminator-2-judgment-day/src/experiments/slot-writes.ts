/**
 * Every write to one object slot's cells (the arrays from $0407 + $20 k, both bytes, and $0027,X)
 * over a stretch of the run, with the instruction and the value — to see what a blow (or a shot) does
 * to an enemy. GUN=n: from `from` on the player has gun n (`$E9`/`$EA`/`$EB`, STATUS §17) and B is
 * tapped standing (OWN pads), as weapon-tas.ts does.
 *   node --experimental-strip-types --no-warnings src/experiments/slot-writes.ts <slot hex> <from> <to>
 */
import { Run } from '../run.ts';

const [slotHex, froms, tos] = process.argv.slice(2);
const slot = parseInt(slotHex, 16), from = Number(froms), to = Number(tos);
const gun = process.env.GUN === undefined ? -1 : Number(process.env.GUN);
const run = new Run();
if (gun >= 0) for (let i = 0; i <= to - from + 2; i++) run.pads[from + i] = i % 12 < 2 ? 2 : 0;
run.to(from);
const m = run.m;
const cells = new Map<number, string>();
for (let k = 0; k < 16; k++) {
  cells.set(0x407 + 0x20 * k + slot, `$${(0x407 + 0x20 * k).toString(16)}`);
  cells.set(0x408 + 0x20 * k + slot, `$${(0x408 + 0x20 * k).toString(16)}`);
}
cells.set(0x27 + slot, '$0027');
let pc = 0;
m.hooks.exec = (p) => { pc = p; };
m.hooks.write = (a, v) => {
  const n = cells.get(a);
  if (n && m.ram[a] !== v) console.log(`frame ${run.frame + 1} $${pc.toString(16)} (PRG ${m.prgOffset(pc).toString(16)}): ${n},X = ${v.toString(16)} (was ${m.ram[a].toString(16)})`);
};
for (let f = from + 1; f <= to; f++) {
  if (gun >= 0) { m.ram[0xe9] = 2; m.ram[0xea] = gun; m.ram[0xeb] = 56; }
  run.to(f);
}
