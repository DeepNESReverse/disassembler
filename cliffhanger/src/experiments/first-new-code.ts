/**
 * Where does the run take a way it has not taken lately? The instructions run in movie frames
 * [from, to) are noted; in frame `to` the first one not among them is printed, with the few
 * instructions before it (the branch that chose it) and the reads they made.
 *   node --experimental-strip-types --no-warnings src/experiments/first-new-code.ts <from> <to>
 */
import { OPCODES } from '@xromdev/cpu6502';
import { Run } from '../run.ts';

const [from, to] = process.argv.slice(2).map(Number);
const run = new Run();
run.to(from - 1);
const m = run.m;
const seen = new Set<number>();
const recent: string[] = [];
let reads: string[] = [];
let done = false;
const h = (n: number, w = 4) => n.toString(16).toUpperCase().padStart(w, '0');
m.hooks.read = (a, v) => {
  reads.push(`${h(a)}=${h(v, 2)}`);
};
m.hooks.exec = (pc) => {
  const key = m.prgOffset(pc >= 0x8000 ? pc : 0x8000) * 0 + (pc >= 0x8000 ? m.prgOffset(pc) : pc);
  const frame = run.frame + 1;
  const line = `${frame}/${m.nes.line} ${h(pc)} ${OPCODES[m.peek(pc)].mnemonic} A${h(m.cpu.a, 2)} X${h(m.cpu.x, 2)} Y${h(m.cpu.y, 2)}`;
  recent.push(`${line}  [${reads.join(' ')}]`);
  reads = [];
  if (recent.length > 40) recent.shift();
  if (frame < to) seen.add(key);
  else if (!done && !seen.has(key)) {
    done = true;
    console.log(`first new instruction in frame ${frame}: ${h(pc)} (prg ${h(m.prgOffset(pc), 5)})`);
    for (const r of recent) console.log(`  ${r}`);
  }
};
run.to(to + 1);
