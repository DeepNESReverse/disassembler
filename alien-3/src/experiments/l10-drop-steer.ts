// Level 10: Randil reaches the ledge at (423, 560) by stepping left off (410, 416) into the water
// column and holding Right as he falls (fceux/tas_trail-randil.txt 55300-55370: L 15 frames,
// then R). The search has no such move. From a teleport onto (410, 416): Left n frames, then
// Right — where does the player land?
import { Level } from '../level.ts';
import { BUTTON, loadState } from '../machine.ts';
import { cardState, teleportOnBuild } from '../teleport.ts';
import { cheats, pos } from '../paths.ts';
const { m, state } = cardState(9);
const level = new Level(m.cart.prg, 9);
for (const left of [20, 24, 28, 32, 36, 40, 48]) {
  loadState(m, state);
  teleportOnBuild(m, level, 288, 240, 410, 400);
  m.nes.beforeVblank = () => cheats(m, true);
  m.frames(1180 - 900);
  const from = pos(m);
  m.frames(left, BUTTON.left);
  const off = pos(m);
  m.frames(left ? 60 : 0, BUTTON.right);
  m.frames(30);
  console.log(`from ${from}: Left ${left} → ${off}, then Right 60 → ${pos(m)}`);
}
