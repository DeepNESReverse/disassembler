// Level 10's door at X 447-480, Y 560: Randil, holding Right, stood at X 423 for 60 frames and
// then walked through (fceux/tas_trail-randil.txt 55370-55440) — the door opens by itself. Held
// Right from the teleport, starting 0-240 frames later: the frame each run gets past X 480.
import { Level } from '../level.ts';
import { BUTTON, loadState } from '../machine.ts';
import { cardState, teleportOnBuild } from '../teleport.ts';
import { cheats, pos } from '../paths.ts';
const { m, state } = cardState(9);
const level = new Level(m.cart.prg, 9);
for (let delay = 0; delay <= 240; delay += 20) {
  loadState(m, state);
  teleportOnBuild(m, level, 288, 480, 423, 560);
  m.nes.beforeVblank = () => cheats(m, true);
  m.frames(1180 - 900 + delay);
  let through = -1;
  for (let k = 0; k < 600 && through < 0; k++) { m.frame(BUTTON.right); if (pos(m)[0] > 480) through = k; }
  console.log(`wait ${delay}: past X 480 after ${through < 0 ? 'never (600)' : through} frames of Right; at ${pos(m)}`);
}
