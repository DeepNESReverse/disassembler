// The timer's cells: RAM cells that change about once a second (every 50 frames, with $0748
// counting down) over a minute of level 1 standing still.
import { cardState } from '../teleport.ts';
const { m } = cardState(0);
m.frames(1180 - 900);
const r = m.ram;
const changes = new Uint16Array(0x800);
let prev = r.slice();
const seq: Record<number, number[]> = {};
for (let f = 0; f < 3600; f++) {
  m.frame(0);
  for (let a = 0; a < 0x800; a++) if (r[a] !== prev[a]) { changes[a]++; (seq[a] ??= []).length < 12 && seq[a].push(r[a]); }
  prev = r.slice();
}
for (let a = 0; a < 0x800; a++) if (changes[a] >= 50 && changes[a] <= 90) console.log(`$${a.toString(16)} changed ${changes[a]}×: ${seq[a].join(',')}`);
