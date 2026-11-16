// Who writes (and reads) RAM cells: the PC and frame of every access, first N.
//   node --experimental-strip-types --no-warnings src/experiments/who-writes.ts <hex,hex> <until frame> [reads]
import { Machine } from '../machine.ts';
import { readMovie } from '../movie.ts';
import { romFile } from '../rom.ts';
const [list, until, reads] = process.argv.slice(2);
const cells = new Set(list.split(',').map((h) => parseInt(h, 16)));
const mv = readMovie();
const m = new Machine(romFile());
let at = 2, pc = 0;
const seen = new Map<string, number>();
m.hooks.exec = (p) => { pc = p; };
const note = (kind: string, a: number, v: number) => {
  const k = `${kind} ${a.toString(16)} @${pc.toString(16)}`;
  if (!seen.has(k)) console.log(`frame ${at}: ${k} = ${v.toString(16)}`);
  seen.set(k, (seen.get(k) ?? 0) + 1);
};
m.hooks.write = (a, v) => { if (cells.has(a)) note('W', a, v); };
if (reads) m.hooks.read = (a, v) => { if (cells.has(a)) note('R', a, v); };
m.nes.beforeVblank = () => { m.nes.buttons = mv.pads[at + 1] ?? 0; at++; };
while (at < Number(until)) m.frame(m.nes.buttons);
console.log([...seen].map(([k, n]) => `${k} ×${n}`).join('\n'));
