// Where does the game read $07A5 (the menu's music/effects switches)? Every read's PC and bank, in
// 600 frames of level 1 with shots, and the code around each.
import { cardState } from '../teleport.ts';
import { BUTTON } from '../machine.ts';
const { m } = cardState(0);
let pc = 0;
m.hooks.exec = (p) => { pc = p; };
const at = new Map<string, number>();
m.hooks.read = (a) => { if (a === 0x7a5) { const k = `${m.bankAt(pc)}:$${pc.toString(16)}`; at.set(k, (at.get(k) ?? 0) + 1); } };
for (let f = 0; f < 600; f++) m.frame(f % 90 < 3 ? BUTTON.A : 0);
console.log([...at].map(([k, n]) => `${k} ×${n}`).join('\n'));
