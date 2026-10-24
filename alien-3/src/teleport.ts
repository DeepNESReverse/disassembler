/**
 * Start a level somewhere else than its start, so that the check can see all of it: when the
 * level's first screen is about to be built (B15:$EAE1, right after the loader $E9D5 copied the
 * header), set the camera ($1A-$1D), the layout pointer $18/$19 that goes with it, and the
 * player (object 0: $0420/$0440 X, $0460/$0480 Y) inside the camera's screen. The game's own
 * scroll ($27 bit 0 and $2A for X, $2B for Y — B15:$F34F, $F35C take the nametable position of
 * later columns and rows from it) is set to 0: the first screen is always built from nametable
 * column 0, row 0 ($EAE1 calls $F0FD with columns 0-7), as on a real start. The screen is then
 * built and scrolled by the game's own code — only where it starts is ours.
 */
import { Machine, loadState, saveState } from './machine.ts';
import { CARD_FRAME, toCard } from './path.ts';
import { Level, BLOCK, LAYOUT_WIDTH } from './level.ts';

export const BUILD_FIRST_SCREEN = 0xeae1;

/**
 * The camera at (camX, camY) — Y a page top (a multiple of 240), X a multiple of 32 — and the
 * player in the middle of its screen. (A camera left on a coarser grid with the player far from it
 * was tried: it then runs to the player faster than the builders keep up, frames of half-built
 * screens that are the teleport's, not the game's.)
 */
export function teleportOnBuild(m: Machine, level: Level, camX: number, camY: number, px = camX + 128, py = camY + 80) {
  const prev = m.hooks.exec;
  let done = false;
  m.hooks.exec = (pc) => {
    if (!done && pc === BUILD_FIRST_SCREEN) {
      done = true;
      const r = m.ram;
      r[0x1a] = camX & 255; r[0x1b] = camX >> 8;
      r[0x1c] = camY & 255; r[0x1d] = camY >> 8;
      const ptr = level.header.layout + (Math.floor(camY / 240) * 8 + Math.floor((camY % 240) / BLOCK)) * LAYOUT_WIDTH + Math.floor(camX / BLOCK);
      r[0x18] = ptr & 255; r[0x19] = ptr >> 8;
      r[0x2a] = 0;
      r[0x27] &= ~1;
      r[0x2b] = 0;
      r[0x420] = px & 255; r[0x440] = px >> 8;
      r[0x460] = py & 255; r[0x480] = py >> 8;
    }
    prev?.(pc);
  };
}

/** A card state for level n, to start teleports from. */
export function cardState(n: number) {
  const m = new Machine();
  toCard(m);
  m.ram[0xa8] = n;
  return { m, state: saveState(m), frame: CARD_FRAME };
}
export { loadState };
