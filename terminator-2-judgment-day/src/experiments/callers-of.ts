/**
 * Who calls a routine: every time the run reaches PRG offset `target` between two frames, the X and
 * Y registers and the return addresses on the stack (the JSRs that led there, each minus 2).
 *   node --experimental-strip-types --no-warnings src/experiments/callers-of.ts <PRG hex> <from> <to>
 */
import { Run } from '../run.ts';

const target = parseInt(process.argv[2], 16);
const [from, to] = process.argv.slice(3).map(Number);
const run = new Run();
run.to(from);
const m = run.m;
m.hooks.exec = (p) => {
  if (p < 0x8000 || m.prgOffset(p) !== target) return;
  const s = m.cpu.s;
  const back: string[] = [];
  for (let k = 1; k <= 7; k += 2) {
    const lo = m.ram[0x100 + ((s + k) & 0xff)], hi = m.ram[0x100 + ((s + k + 1) & 0xff)];
    const a = ((hi << 8) | lo) - 2;
    back.push(`$${a.toString(16)} (PRG ${a >= 0x8000 ? m.prgOffset(a).toString(16) : '-'})`);
  }
  console.log(`frame ${run.frame + 1}: X ${m.cpu.x.toString(16)} Y ${m.cpu.y.toString(16)} from ${back.join(' < ')}`);
};
run.to(to);
