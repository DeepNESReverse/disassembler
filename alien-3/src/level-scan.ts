/**
 * The level cell, by experiment: during the level card (LEVEL 1 / MISSION / TRIES), set a RAM
 * cell, and see whether the level's first screen comes out different from the untouched run.
 * Candidates: cells read between the card and the first screen that hold a small value.
 * (Set on the title menu instead, no cell changes the level: Start resets it.)
 */
import { createHash } from 'node:crypto';
import { mkdirSync, writeFileSync } from 'node:fs';
import { encodePng } from '../../xrom-libs/nes/src/png.ts';
import { HEIGHT, WIDTH } from '../../xrom-libs/nes/src/ppu.ts';
import { CARD_FRAME, PLAY_FRAME, toCard } from './path.ts';
import { Machine, loadState, saveState } from './machine.ts';

const CARD = Number(process.env.AT ?? CARD_FRAME);
const END = PLAY_FRAME;
const m = new Machine();
toCard(m);
m.frames(CARD - CARD_FRAME);
const menu = saveState(m);
const read = new Set<number>();
m.hooks.read = (a) => { if (a < 0x800) read.add(a); };
const run = () => {
  m.frames(END - CARD);
  const s = m.ppu.snapshot();
  return { play: createHash('md5').update(s.nametables).digest('hex'), pixels: s.pixels };
};
const base = run();
m.hooks.read = undefined;
loadState(m, menu);
const cands = [...read].filter((a) => a >= 0x200 || a < 0x100).filter((a) => m.ram[a] <= 16).sort((a, b) => a - b);
console.log(`${cands.length} candidates`);
mkdirSync('runs/level-scan', { recursive: true });
for (const a of cands) {
  for (const v of [m.ram[a] + 1, m.ram[a] + 2]) {
    loadState(m, menu);
    m.ram[a] = v;
    const r = run();
    if (r.play !== base.play) {
      console.log(`$${a.toString(16).padStart(4, '0')}=${v}: level differs`);
      writeFileSync(`runs/level-scan/${a.toString(16)}-${v}.png`, encodePng(r.pixels, WIDTH, HEIGHT));
    }
  }
}
