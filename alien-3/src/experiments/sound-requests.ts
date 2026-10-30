// The sound request cell $A7 (B15:$EF04 puts a sound's number there; below $12 music, $12 and up
// effects): who writes it, with what, and does the value outlive the frame (so a take's end-of-frame
// RAM sees every request)?
import { cardState } from '../teleport.ts';
import { BUTTON } from '../machine.ts';
const { m } = cardState(0);
let pc = 0;
m.hooks.exec = (p) => { pc = p; };
const log: string[] = [];
m.hooks.write = (a, v) => { if (a === 0xa7) log.push(`f${m.nes.frame} ${m.bankAt(pc)}:$${pc.toString(16)} ←${v.toString(16)}`); };
for (let f = 0; f < 400; f++) { m.frame(f % 90 < 3 ? BUTTON.A : 0); if (log.length) { console.log(log.join('  '), '| end of frame', m.ram[0xa7].toString(16)); log.length = 0; } }
