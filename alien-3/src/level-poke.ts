/**
 * The level cell $A8, proved: set it to 0..11 during the level card and photograph the level that
 * loads (runs/level-poke/<n>.png), then save each level's start as a state for other tools.
 */
import { mkdirSync, writeFileSync } from 'node:fs';
import { encodePng } from '../../xrom-libs/nes/src/png.ts';
import { HEIGHT, WIDTH } from '../../xrom-libs/nes/src/ppu.ts';
import { Machine, loadState, saveState } from './machine.ts';
import { CARD_FRAME, toCard } from './path.ts';

export const LEVEL = 0xa8;

/** A machine standing at the start of level `n` (frame 1300), entered by setting $A8 on the card. */
export function atLevel(n: number, frame = 1300): Machine {
  const m = new Machine();
  toCard(m);
  m.ram[LEVEL] = n;
  m.frames(frame - CARD_FRAME);
  return m;
}

if (import.meta.url === `file://${process.argv[1]}`) {
  mkdirSync('runs/level-poke', { recursive: true });
  const m = new Machine();
  toCard(m);
  const card = saveState(m);
  for (let n = 0; n < 12; n++) {
    loadState(m, card);
    m.ram[LEVEL] = n;
    m.frames(1300 - CARD_FRAME);
    writeFileSync(`runs/level-poke/${String(n).padStart(2, '0')}.png`, encodePng(m.ppu.snapshot().pixels, WIDTH, HEIGHT));
    console.log(`$A8=${n}: frame ${m.nes.frame}, $A8 now ${m.ram[LEVEL]}`);
  }
}
