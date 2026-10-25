// A RAM cell that tells the level card from the level being played: constant through the card
// (frames 860-1140 of the path) and through play (1185-1600), different between them; then, on a
// death's card, does it go back? (Level 1, from power-on.)
import { Machine } from '../machine.ts';
import { romFile } from '../rom.ts';
import { goTo } from '../path.ts';
const m = new Machine(romFile());
const card: Uint8Array[] = [], play: Uint8Array[] = [];
for (let f = 0; f < 1600; f++) { goTo(m, f + 1); if (f >= 860 && f <= 1140) card.push(m.ram.slice()); if (f >= 1185) play.push(m.ram.slice()); }
const out: string[] = [];
for (let a = 0; a < 0x800; a++) {
  if (a >= 0x100 && a < 0x200) continue;
  const c = card[0][a], p = play[0][a];
  if (c !== p && card.every((r) => r[a] === c) && play.every((r) => r[a] === p)) out.push(`$${a.toString(16)} card ${c} play ${p}`);
}
console.log(out.join('\n'));
