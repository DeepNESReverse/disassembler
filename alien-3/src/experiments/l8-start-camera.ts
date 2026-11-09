// Level 8: the search marked (267, 717) seen, Randil's run and the user's play never did. The
// camera ($1A-$1D) frame by frame from the card, as visible.ts runs it, then in the first moves.
import { cardState } from '../teleport.ts';
import { cheats, pos } from '../paths.ts';
import { BUTTON } from '../machine.ts';
const { m } = cardState(7);
m.nes.beforeVblank = () => cheats(m, true);
let last = '';
for (let f = 0; f < 1180 - 900 + 200; f++) {
  m.frame(f > 300 ? BUTTON.left : 0);
  const c = `${m.ram[0x1a] | (m.ram[0x1b] << 8)},${m.ram[0x1c] | (m.ram[0x1d] << 8)} player ${pos(m)}`;
  if (c !== last) { console.log(`frame ${f}: camera ${c}`); last = c; }
}
