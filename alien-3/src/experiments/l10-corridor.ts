// Level 10's bottom corridor (Y 800): Randil walks right from X 404 to 904 with two 7-frame hops
// (frames 57568-57890). The search never got past X ~440 there. Teleported into the camera's
// field at (430, 800): Right held, then Randil's own pads from 57568 — how far does each get?
import { Level } from '../level.ts';
import { BUTTON, loadState } from '../machine.ts';
import { cardState, teleportOnBuild } from '../teleport.ts';
import { cheats, pos } from '../paths.ts';
import { parseTake } from '../take.ts';
const take = parseTake('fceux/tas_take.play.txt');
const { m, state } = cardState(9);
const level = new Level(m.cart.prg, 9);
for (const how of ['right', 'randil']) {
  loadState(m, state);
  teleportOnBuild(m, level, 320, 720, 416, 800);
  m.nes.beforeVblank = () => cheats(m, true);
  m.frames(1180 - 900);
  const out = [`start ${pos(m)}`];
  for (let k = 0; k < 330; k++) { m.frame(how === 'right' ? BUTTON.right : take.buttons[57568 + k - 1]); if (k % 30 === 29) out.push(`${pos(m)}`); }
  console.log(how.padEnd(7), out.join(' '));
}
