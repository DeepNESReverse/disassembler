/**
 * Every time the TAS loads an area header (`$A3E0`, X = 2 × the header's index): the movie frame,
 * `$D1` and the header read, and who called the loader.
 *   node --experimental-strip-types --no-warnings src/experiments/header-loads.ts
 */
import { Run } from '../run.ts';

const run = new Run();
const m = run.m;
const seen: string[] = [];
m.hooks.exec = (pc) => {
  if (pc !== 0xa3e0 || m.prgOffset(pc) !== 0x63e0) return;
  const s = m.cpu.s;
  const ret = (m.ram[0x100 + ((s + 2) & 0xff)] << 8 | m.ram[0x100 + ((s + 1) & 0xff)]) - 2;
  seen.push(`frame ${run.frame + 1}: $D1 ${m.ram[0xd1]}  header #${m.cpu.x >> 1}  called from $${ret.toString(16)}`);
};
run.to(run.pads.length);
console.log(seen.join('\n'));
