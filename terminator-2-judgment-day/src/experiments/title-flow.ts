// The title flow under the TAS: every frame the script pointer ($E0/$E1) or its handler ($E2/$E3)
// changes, and the runs of frames without a pad read (lag).
//   node --experimental-strip-types --no-warnings src/experiments/title-flow.ts <from> <to> [drop start at]
import { Machine } from '../machine.ts';
import { readMovie } from '../movie.ts';
import { romFile } from '../rom.ts';
const [from, to, drop] = process.argv.slice(2).map(Number);
const mv = readMovie();
if (drop) mv.pads[drop] &= ~8;
const m = new Machine(romFile());
let at = 1, reads = 0, last = '', lagFrom = -1;
m.hooks.read = (a) => { if (a === 0x4016) reads++; };
m.nes.beforeVblank = () => {
  if (at >= from) {
    const s = [0xe1, 0xe0, 0xe3, 0xe2].map((c) => m.ram[c].toString(16).padStart(2, '0')).join('');
    if (s !== last) console.log(at, 'script', s.slice(0, 4), 'handler', s.slice(4), mv.pads[at] ? 'pad ' + mv.pads[at].toString(16) : '');
    last = s;
    if (!reads && lagFrom < 0) lagFrom = at;
    if (reads && lagFrom >= 0) { console.log(`   lag ${lagFrom}-${at - 1}`); lagFrom = -1; }
  }
  reads = 0;
  m.nes.buttons = mv.pads[at + 1] ?? 0; at++;
};
while (at < to) m.frame(m.nes.buttons);
