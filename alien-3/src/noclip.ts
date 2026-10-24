/**
 * No-clip: the player is put where we say every frame, so the camera — the game's own camera code
 * following him — goes anywhere in the layout, and the game builds whatever lies there, inside the
 * rooms or not. The check (`Checker`) compares every frame as usual.
 *
 * Interventions, each needed and each the smallest found (STATUS.md §8):
 *   - the player's X/Y ($0420/$0440, $0460/$0480) written at line 241, before the NMI and the
 *     game's logic;
 *   - the exit is not taken: B13:$B99F compares the player with the level's exit ($FE24/$FE3C by
 *     $A8) and jumps to the level's end at $B9CB — the CPU is sent to the RTS at $B9CE instead;
 *   - health ($074A, $18 at the start, −2 a blow — src/experiments/health.ts) and the timer's
 *     digits ($0741-$0744, src/experiments/timer.ts) held, so that falls (B14:$D6A5 takes health
 *     when a fall is long, which a player held in the air always is) and time do not end it.
 *
 *   node --experimental-strip-types src/noclip.ts <level 1-12> [--step 120]
 */
import { mkdirSync, writeFileSync } from 'node:fs';
import { encodePng } from '../../xrom-libs/nes/src/png.ts';
import type { Machine } from './machine.ts';
import { Level } from './level.ts';
import { cardState } from './teleport.ts';
import { Checker } from './check.ts';
import { renderLevel, loadCart } from './render.ts';

export const EXIT_JUMP = 0xb9cb;
export const EXIT_RTS = 0xb9ce;

/**
 * Camera positions over the whole layout: rows `step` px apart, swept left-right then right-left
 * (the camera's top-left; it shows 256 × 176).
 */
export function lawnmower(level: Level, step: number): [number, number][] {
  const W = level.widthTiles * 8, H = level.heightTiles * 8;
  const out: [number, number][] = [];
  for (let y = 0, dir = 1; y <= H - 176 + step - 1; y += step, dir = -dir) {
    const yy = Math.min(y, H - 176);
    out.push(dir > 0 ? [0, yy] : [W - 256, yy], dir > 0 ? [W - 256, yy] : [0, yy]);
  }
  return out;
}

/**
 * The player's place for the coming frame, to lead the camera to `goal` (its top-left): the camera
 * follows the player only while he is on its screen — it reads his screen X as one byte, `$7C`,
 * B15:$FAC0 — and at 3 px a frame at most, one axis at a time (`$2D`), so he walks at 2 px a frame
 * and is kept inside the screen, ahead of the camera on the axis it is to move.
 */
export function lead(m: Machine, goal: [number, number], speed = 2): [number, number] {
  const r = m.ram;
  const camX = ((r[0x1a] | (r[0x1b] << 8)) << 16) >> 16, camY = ((r[0x1c] | (r[0x1d] << 8)) << 16) >> 16;
  const px = r[0x420] | (r[0x440] << 8), py = r[0x460] | (r[0x480] << 8);
  const dx = goal[0] - camX, dy = goal[1] - camY;
  // Horizontal first, then vertical (the camera switches axis only on the grid).
  let tx = camX + 128, ty = camY + 88;
  if (Math.abs(dx) > 2) tx = camX + 128 + Math.sign(dx) * 72;
  else if (Math.abs(dy) > 2) ty = camY + 88 + Math.sign(dy) * 56;
  const step = (from: number, to: number) => from + Math.max(-speed, Math.min(speed, to - from));
  return [step(px, tx), step(py, ty)];
}

/** Health full ($18, as B15:$E9BD sets it) and the timer at 04:00 ($0741-$0744, digit a cell). */
export function holdHealthAndTime(r: Uint8Array) {
  r[0x74a] = 0x18;
  r[0x741] = 0; r[0x742] = 4; r[0x743] = 0; r[0x744] = 0;
}

/** Install the interventions on `m`; `where()` gives the player's place for the coming frame. */
export function noclip(m: Machine, where: () => [number, number] | null) {
  const r = m.ram;
  const prevExec = m.hooks.exec;
  m.hooks.exec = (pc) => {
    prevExec?.(pc);
    if (pc === EXIT_JUMP && m.bankAt(pc) === 13) m.cpu.pc = EXIT_RTS;
  };
  return () => {
    const p = where();
    if (!p) return;
    const [x, y] = p;
    r[0x420] = x & 255; r[0x440] = (x >> 8) & 255;
    r[0x460] = y & 255; r[0x480] = (y >> 8) & 255;
    holdHealthAndTime(r);
  };
}

if (import.meta.url === `file://${process.argv[1]}`) {
  const args = process.argv.slice(2);
  const opt = (k: string, d: string) => (args.includes(k) ? args[args.indexOf(k) + 1] : d);
  const n = Number(args[0]) - 1;
  const cart = loadCart();
  const level = new Level(cart.prg, n);
  const { m } = cardState(n);
  const checker = new Checker(m, level);
  checker.attach();
  checker.tag = 'noclip';
  const goals = lawnmower(level, Number(opt('--step', '120')));
  let cur: [number, number] | null = null;
  const put = noclip(m, () => cur);
  let minX = 1e9, maxX = -1e9, minY = 1e9, maxY = -1e9, frames = 0, lost = 0;
  m.nes.beforeVblank = () => {
    checker.frame(m.ram[0xa8] === n && m.nes.frame >= 1180);
    put();
  };
  m.frames(1180 - 900);
  /** Goals the camera never reached: it stopped short (a limit of the camera, if there is one). */
  const stuck: object[] = [];
  for (const goal of goals) {
    // Given up when the camera stands still 2 s, or after 100 s (it may also swing about a place).
    let still = 0, last = '', spent = 0;
    for (;;) {
      cur = lead(m, goal);
      m.frame(0);
      frames++;
      if (m.ram[0xa8] !== n) { lost++; break; }
      const r = m.ram;
      const cx = ((r[0x1a] | (r[0x1b] << 8)) << 16) >> 16, cy = ((r[0x1c] | (r[0x1d] << 8)) << 16) >> 16;
      minX = Math.min(minX, cx); maxX = Math.max(maxX, cx); minY = Math.min(minY, cy); maxY = Math.max(maxY, cy);
      if (Math.abs(cx - goal[0]) <= 2 && Math.abs(cy - goal[1]) <= 2) break;
      const here = `${cx},${cy}`;
      still = here === last ? still + 1 : 0;
      last = here;
      if (still > 120 || ++spent > 6000) { stuck.push({ goal, camera: [cx, cy], frames: spent }); break; }
    }
    if (lost) break;
  }
  const s = { ...checker.summary(), noclip: { frames, camera: { minX, maxX, minY, maxY }, levelChanged: lost > 0, stuck } };
  console.log(s);
  const nn = String(n + 1).padStart(2, '0');
  mkdirSync('out/levels', { recursive: true });
  writeFileSync(`out/levels/${nn}-noclip.json`, JSON.stringify(s, null, 2) + '\n');
  const { pixels, width, height } = renderLevel(level, cart.chr);
  const W = level.widthTiles;
  for (let y = 0; y < height; y++)
    for (let x = 0; x < width; x++) {
      const cell = (y >> 3) * W + (x >> 3), i = y * width + x, p = pixels[i];
      const [rr, g, b] = [(p >> 16) & 255, (p >> 8) & 255, p & 255];
      if (checker.differed[cell]) pixels[i] = (Math.min(255, 128 + (rr >> 1)) << 16) | ((g >> 2) << 8) | (b >> 2);
      else if (checker.stale[cell]) pixels[i] = (Math.min(255, 128 + (rr >> 1)) << 16) | (Math.min(255, 64 + (g >> 1)) << 8) | (b >> 2);
      else if (!checker.seen[cell]) pixels[i] = ((rr >> 2) << 16) | ((g >> 2) << 8) | (b >> 2);
    }
  writeFileSync(`out/levels/${nn}-noclip.png`, encodePng(pixels, width, height));
}
