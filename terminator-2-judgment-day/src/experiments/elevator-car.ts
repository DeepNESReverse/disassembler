/**
 * Where the elevator's car is in the game's frame, against the player: the columns of the frame's
 * lines 30-219 that are not black, and the player's x ($0427) less the camera's ($C4 + 40, the
 * elevator's offset, STATUS §6) — to lay the car on the hospital's map over its door.
 *   node --experimental-strip-types --no-warnings src/experiments/elevator-car.ts [frame …]
 */
import { HEIGHT, WIDTH } from '../../libs/nes/src/ppu.ts';
import { Run } from '../run.ts';

const run = new Run();
const m = run.m;
for (const f of process.argv.slice(2).map(Number)) {
  run.to(f);
  const px = m.ppu.pixels as unknown as Uint32Array;
  let x0 = WIDTH, x1 = -1, y0 = HEIGHT, y1 = -1;
  const black = px[0];
  for (let y = 30; y < 220; y++) for (let x = 0; x < WIDTH; x++) {
    if (px[y * WIDTH + x] === black) continue;
    x0 = Math.min(x0, x); x1 = Math.max(x1, x); y0 = Math.min(y0, y); y1 = Math.max(y1, y);
  }
  const r = m.ram;
  const cam = (r[0xc5] << 8) | r[0xc4];
  const player = (r[0x428] << 8) | r[0x427];
  console.log(`f${f}: not black x ${x0}-${x1} (middle ${(x0 + x1) / 2}), y ${y0}-${y1}; player x ${player} - camera ${cam} - 40 = ${player - cam - 40} on screen`);
}
