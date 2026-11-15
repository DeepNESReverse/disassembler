/**
 * On which line of the frame (and by which instruction) given cells are written, for a few movie
 * frames from `at`: how close the main loop's work comes to line 241, where FCEUX's frame ends.
 *   node --experimental-strip-types --no-warnings src/experiments/when-written.ts <at> [cell hex …]
 */
import { Run } from '../run.ts';

const [atArg, ...cellArgs] = process.argv.slice(2);
const at = Number(atArg);
const cells = new Set((cellArgs.length ? cellArgs : ['40', '6b', '40f']).map((c) => parseInt(c, 16)));
const run = new Run();
run.to(at - 1);
const m = run.m;
const out: string[] = [];
let pc = 0;
m.hooks.exec = (p) => {
  pc = p;
};
m.hooks.write = (a) => {
  if (cells.has(a)) out.push(`${run.frame + 1}:${a.toString(16)}@${m.nes.line}($${pc.toString(16)})`);
};
run.to(at + 8);
console.log(out.join(' '));
