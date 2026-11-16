/**
 * The steel mill's top drawn with each of the background bank sets its field opens with (bank-runs.ts):
 * slots 0-1 = 6, 7 and slots 2-3 = each pair -> runs/mill-<pair>.png (the map's top 768 × 320).
 *   node --experimental-strip-types --no-warnings src/experiments/mill-phases.ts
 */
import { mkdirSync, writeFileSync } from 'node:fs';
import { encodePng } from '../../libs/nes/src/png.ts';
import { NES_RGB } from '../../libs/nes/src/palette.ts';
import { area, tileAt } from '../level.ts';
import { lookAt, LOOK } from '../render.ts';
import { Run } from '../run.ts';

const a = area(0);
const run = new Run();
const look = lookAt(run, LOOK[0]);
const chr = run.m.cart.chr;
const W = 768, H = 320;
mkdirSync('runs', { recursive: true });
for (const pair of [[8, 9], [0xa, 0xb], [0xc, 0xd], [0xe, 0xf], [0x28, 0x29]]) {
  const slots = [6, 7, ...pair].map((b) => b * 0x400);
  const px = new Uint32Array(W * H);
  for (let ty = 0; ty < H / 8; ty++) for (let tx = 0; tx < W / 8; tx++) {
    const { tile, palette } = tileAt(a, tx, ty);
    const at = slots[tile >> 6] + (tile & 63) * 16;
    for (let y = 0; y < 8; y++) for (let x = 0; x < 8; x++) {
      const c = ((chr[at + y] >> (7 - x)) & 1) | (((chr[at + y + 8] >> (7 - x)) & 1) << 1);
      px[(ty * 8 + y) * W + tx * 8 + x] = NES_RGB[(c ? look.palette[palette * 4 + c] : look.palette[0]) & 0x3f];
    }
  }
  writeFileSync(`runs/mill-${pair[0].toString(16)}.png`, encodePng(px, W, H, 1));
}
