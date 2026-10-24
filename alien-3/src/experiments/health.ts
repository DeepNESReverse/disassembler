// Which cell is health: values of $0748/$074A from the level's start while a wander takes blows,
// and whether a life is lost ($0371?) when $074A reaches 0.
import { BUTTON } from '../machine.ts';
import { cardState } from '../teleport.ts';
const { m } = cardState(0);
m.frames(1180 - 900);
const r = m.ram;
let last = '';
for (let f = 0; f < 3000; f++) {
  m.frame(f % 200 < 150 ? BUTTON.left : 0);
  const now = `74a=${r[0x74a]} 746/747=${r[0x746]}${r[0x747]} a8=${r[0xa8]} lives?371=${r[0x371]}`;
  if (now !== last) { console.log(`f${m.nes.frame} ${now}`); last = now; }
}
