/**
 * The flood channel as one diagonal corridor -> out/levels/6-corridor.png: the sheared world
 * (level.ts, STATUS §7) drawn only where the camera looked during the TAS's ride, cut to that band's
 * bounding box; the rest is black. The camera is the capture's `$C4-$C7` + (16, 0), widened by
 * 16 px each way (the picture runs up to that far from the RAM on the bike, check.ts).
 *   node --experimental-strip-types --no-warnings src/bike-corridor.ts
 */
import { mkdirSync, writeFileSync } from 'node:fs';
import { encodePng } from '../libs/nes/src/png.ts';
import { NES_RGB } from '../libs/nes/src/palette.ts';
import { readCapture } from './capture.ts';
import { BIKE, area, tileAt } from './level.ts';
import { LOOK, lookAt } from './render.ts';
import { Run } from './run.ts';

const a = area(BIKE);
const W = a.cols * 2;
const H = a.rows * 2;
const seen = new Uint8Array(W * H);
const SLOP = 16;
let frames = 0;
for (const c of readCapture()) {
  if (c.frame < 9188 || c.frame > 12434 || c.ram[0xd1] !== 1) continue;
  const x = ((c.ram[0xc5] << 8) | c.ram[0xc4]) + 16;
  const y = ((c.ram[0xc7] << 8) | c.ram[0xc6]);
  frames++;
  for (let ty = Math.max(0, (y - SLOP) >> 3); ty <= Math.min(H - 1, (y + 222 + SLOP) >> 3); ty++) {
    for (let tx = Math.max(0, (x - SLOP) >> 3); tx <= Math.min(W - 1, (x + 256 + SLOP) >> 3); tx++) seen[ty * W + tx] = 1;
  }
}
let x0 = W, y0 = H, x1 = 0, y1 = 0;
for (let ty = 0; ty < H; ty++) for (let tx = 0; tx < W; tx++) {
  if (!seen[ty * W + tx]) continue;
  x0 = Math.min(x0, tx); x1 = Math.max(x1, tx); y0 = Math.min(y0, ty); y1 = Math.max(y1, ty);
}
const run = new Run();
const look = lookAt(run, LOOK[BIKE]);
const chr = run.m.cart.chr;
const width = (x1 - x0 + 1) * 8;
const height = (y1 - y0 + 1) * 8;
const pixels = new Uint32Array(width * height);
for (let ty = y0; ty <= y1; ty++) {
  for (let tx = x0; tx <= x1; tx++) {
    if (!seen[ty * W + tx]) continue;
    const { tile, palette } = tileAt(a, tx, ty);
    const at = look.slots[tile >> 6] + (tile & 63) * 16;
    for (let y = 0; y < 8; y++) {
      const lo = chr[at + y];
      const hi = chr[at + y + 8];
      for (let x = 0; x < 8; x++) {
        const c = ((lo >> (7 - x)) & 1) | (((hi >> (7 - x)) & 1) << 1);
        const index = c === 0 ? look.palette[0] : look.palette[palette * 4 + c];
        pixels[((ty - y0) * 8 + y) * width + (tx - x0) * 8 + x] = NES_RGB[index & 0x3f];
      }
    }
  }
}
mkdirSync('out/levels', { recursive: true });
writeFileSync('out/levels/6-corridor.png', encodePng(pixels, width, height, 1));
writeFileSync('out/levels/6-corridor.json', JSON.stringify({ x: x0 * 8, y: y0 * 8, w: width, h: height }) + '\n');
console.log(`${frames} frames; the corridor is world x ${x0 * 8}-${x1 * 8 + 7}, y ${y0 * 8}-${y1 * 8 + 7}: ${width} x ${height}`);
