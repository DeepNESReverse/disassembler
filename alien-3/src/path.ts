/**
 * The way into a level from power-on (found by shots, runs/s3): Start at frame 700 skips the
 * title's drawing, Start at 824 picks "Start" on the menu; the level card shows from ~848 to ~1150,
 * the level's first screen is up by 1180.
 */
import { BUTTON, Machine } from './machine.ts';

export const CARD_FRAME = 900;
export const PLAY_FRAME = 1300;
/** From power-on to frame CARD_FRAME, the level card on screen. */
export function toCard(m: Machine) {
  m.frames(700);
  m.frames(4, BUTTON.start);
  m.frames(120);
  m.frames(4, BUTTON.start);
  m.frames(CARD_FRAME - 828);
}

/** The path's buttons at a frame (the frame about to run). */
export function pathButtons(frame: number): number {
  return (frame >= 700 && frame < 704) || (frame >= 824 && frame < 828) ? BUTTON.start : 0;
}
/** From wherever `m` stands on the path, run it on to frame `to`. */
export function goTo(m: Machine, to: number) {
  while (m.nes.frame < to) m.frame(pathButtons(m.nes.frame));
}
