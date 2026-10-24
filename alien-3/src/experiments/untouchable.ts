/**
 * The "untouchable" cheat: hold $03C8 — the game's own invulnerability timer (B14:$C794 lets no
 * enemy hit through while it is not 0; the loader sets it to $64 at a level's start, B15:$E9CA).
 * Level 1, the same seeded wander with and without it, 6000 frames: enemy hits (B14:$C7D5 run),
 * health ($074A) lost, lives/cards (frames where $A8's level is not being played).
 */
import { BUTTON } from '../machine.ts';
import { cardState } from '../teleport.ts';

for (const cheat of [false, true]) {
  const { m } = cardState(0);
  let hits = 0, lost = 0;
  m.hooks.exec = (pc) => { if (pc === 0xc7d5 && m.bankAt(pc) === 14) hits++; };
  let lastHealth = -1;
  m.nes.beforeVblank = () => {
    if (cheat) m.ram[0x3c8] = 0x64;
    const h = m.ram[0x74a];
    if (lastHealth >= 0 && h < lastHealth) lost += lastHealth - h;
    lastHealth = h;
  };
  m.frames(1180 - 900);
  let seed = 3;
  const rand = () => ((seed = (seed * 1103515245 + 12345) >>> 0) / 2 ** 32);
  const dirs = [BUTTON.right, BUTTON.left, BUTTON.right, BUTTON.down, BUTTON.up];
  let left = 0, held = 0;
  for (let f = 0; f < 6000; f++) {
    if (left-- <= 0) { held = dirs[Math.floor(rand() * dirs.length)]; left = 30 + Math.floor(rand() * 120); }
    m.frame(held | (rand() < 0.08 ? BUTTON.A : 0));
  }
  console.log(`${cheat ? 'with $03C8 held' : 'no cheat      '}: enemy hits ${hits}, health lost ${lost}, health now ${m.ram[0x74a]}`);
}
