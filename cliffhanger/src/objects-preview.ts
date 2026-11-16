/**
 * The Objects chapter's card on xrom.dev: every kind of object once, as the chapter's table has them
 * (kinds.json, src/objects-table.ts), by id in a grid on the site's dark (seven to a row, the helicopter is 64 px wide), ×2 with the pixels kept
 * sharp → out/art/objects.png (960 × 544, the run's card's size) and objects.webp.
 *   node --experimental-strip-types --no-warnings src/objects-preview.ts
 */
import { readFileSync, writeFileSync } from 'node:fs';
import { execFileSync } from 'node:child_process';
import { encodePng } from '../libs/nes/src/png.ts';
import { readPng } from './png-read.ts';

const W = 480, H = 272, SCALE = 2, COLS = 7;
const kinds = (JSON.parse(readFileSync('out/levels/kinds.json', 'utf8')).objects as { img: string }[]).map((o) => o.img);
const rows = Math.ceil(kinds.length / COLS);
const cw = W / COLS, ch = H / rows;
const px = new Array(W * H).fill(0x111111);
kinds.forEach((img, i) => {
  const pic = readPng(`out/levels/${img}`);
  const ox = Math.round((i % COLS) * cw + (cw - pic.w) / 2), oy = Math.round(Math.floor(i / COLS) * ch + (ch - pic.h) / 2);
  for (let y = 0; y < pic.h; y++) {
    for (let x = 0; x < pic.w; x++) {
      if (pic.alpha && !pic.alpha[y * pic.w + x]) continue;
      const X = ox + x, Y = oy + y;
      if (X >= 0 && Y >= 0 && X < W && Y < H) px[Y * W + X] = pic.px[y * pic.w + x];
    }
  }
});
writeFileSync('out/art/objects.png', encodePng(px, W, H, SCALE));
execFileSync('python3', ['-c', "from PIL import Image; Image.open('out/art/objects.png').save('out/art/objects.webp', lossless=True)"]);
console.log(`out/art/objects.png, objects.webp: ${kinds.length} kinds, ${W * SCALE} × ${H * SCALE}`);
