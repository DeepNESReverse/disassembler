/**
 * The code a flying shot runs, on level 1 and in the hospital: the run to `from`, B tapped standing
 * with a gun in hand (`$E9` 2, `$EA` gun, `$EB` 56), and the instructions run on frames with a shot
 * in flight (`$ED` > 0) that none of the frames before the first shot ran.
 *   node --experimental-strip-types --no-warnings src/experiments/shot-code.ts <from> [gun]
 */
import { Run } from '../run.ts';

const from = Number(process.argv[2] ?? 1535);
const gun = Number(process.argv[3] ?? 6);
const run = new Run();
for (let i = 0; i < 80; i++) run.pads[from + i] = i >= 20 && i % 12 < 2 ? 2 : 0;
run.to(from);
const m = run.m;
const before = new Set<number>();
const during = new Set<number>();
let set = before;
m.hooks.exec = (p) => { if (p >= 0x8000) set.add(m.prgOffset(p)); };
for (let i = 0; i < 80; i++) {
  m.ram[0xe9] = 2; m.ram[0xea] = gun; m.ram[0xeb] = 56;
  set = m.ram[0xed] > 0 ? during : i < 20 ? before : new Set();
  run.to(from + i + 1);
}
const only = [...during].filter((p) => !before.has(p)).sort((p, q) => p - q);
const out: string[] = [];
let s = -1, e = -1;
for (const p of only) { if (p - e > 6) { if (s >= 0) out.push(s.toString(16) + (e > s ? '-' + e.toString(16) : '')); s = p; } e = p; }
if (s >= 0) out.push(s.toString(16) + (e > s ? '-' + e.toString(16) : ''));
console.log(`gun ${gun} from ${from}: run only while a shot flies (PRG): ${out.join(' ')}`);
