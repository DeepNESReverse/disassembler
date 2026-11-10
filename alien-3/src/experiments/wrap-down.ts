/**
 * The user's find: going down in no-clip from a boss room, the room comes back at camera Y 30720.
 * Level 3, no-clip straight down in band 1 (camera X 256): the layout pointer $18/$19 at each page.
 */
import { cardState } from '../teleport.ts';
import { lead, noclip } from '../noclip.ts';

const { m } = cardState(2);
let cur: [number, number] | null = null;
m.nes.beforeVblank = noclip(m, () => cur);
m.frames(1180 - 900);
const r = m.ram;
const camY = () => r[0x1c] | (r[0x1d] << 8);
let lastPage = -1;
for (let f = 0; f < 20000 && camY() < 31000; f++) {
  cur = lead(m, [256, 31000], 3);
  m.frame(0);
  const page = Math.floor(camY() / 240);
  if (page !== lastPage && camY() % 240 < 4 && (page < 4 || page % 16 === 0 || page >= 126)) {
    lastPage = page;
    console.log(`camera Y ${camY()} (page ${page}): $18 = $${(r[0x18] | (r[0x19] << 8)).toString(16).padStart(4, '0')}`);
  }
}
