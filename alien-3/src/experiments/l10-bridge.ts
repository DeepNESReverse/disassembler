// Level 10: Randil leaves the left part only once all four prisoners are rescued — up the ladder at
// X 947 (Y 336 → 80), then right over the top bridge (fceux/tas_trail-randil.txt, frames
// 58300-58500). Does the way open on the prisoners, or is it there all along? The player put on
// the ladder's foot, Up then Right, with $0747 (prisoners left) as the level set it and at 0.
import { Level } from '../level.ts';
import { loadState } from '../machine.ts';
import { BUTTON } from '../machine.ts';
import { cardState, teleportOnBuild } from '../teleport.ts';
import { cheats, pos } from '../paths.ts';
const { m, state } = cardState(9);
const level = new Level(m.cart.prg, 9);
for (const zero of [false, true]) {
  loadState(m, state);
  teleportOnBuild(m, level, 736, 240, 868, 416);
  m.nes.beforeVblank = () => { cheats(m, true); if (zero) m.ram[0x747] = 0; };
  m.frames(1180 - 900);
  const out: string[] = [`start ${pos(m)} left ${m.ram[0x747]}`];
  for (const [name, b, n] of [['up+right', BUTTON.up | BUTTON.right, 90], ['up', BUTTON.up, 200], ['right', BUTTON.right, 150], ['right', BUTTON.right, 150]] as const) { m.frames(n, b); out.push(`${name} → ${pos(m)}`); }
  console.log(zero ? '$0747 = 0:' : '$0747 as set:', out.join(' · '));
}

// Randil's own pads from frame 58130 (he climbs at 868, 452), from the same teleported start.
import { parseTake } from '../take.ts';
const take = parseTake('fceux/tas_take.play.txt');
loadState(m, state);
teleportOnBuild(m, level, 736, 240, 868, 452);
m.nes.beforeVblank = () => cheats(m, true);
m.frames(1180 - 900);
const way: string[] = [];
for (let f = 58130; f <= 58520; f++) { m.frame(take.buttons[f - 1]); if (f % 20 === 0) way.push(`${f}:${pos(m)}`); }
console.log("Randil's pads:", way.join(' '));
