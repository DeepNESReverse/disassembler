/**
 * The items' card on xrom.dev: a window of a section's map with its items drawn on it as the page
 * draws them (items.json, items/*.png), ×2 with the pixels kept sharp → out/art/items.png.
 * The window is the run's card's size (480 × 272 map pixels); by default section 4's stretch with a
 * campfire, two money bags and a knife.
 *   node --experimental-strip-types --no-warnings src/items-preview.ts [section] [x] [y]
 */
import { readFileSync, writeFileSync } from 'node:fs';
import { encodePng } from '../libs/nes/src/png.ts';
import { readPng } from './png-read.ts';

const [sec = 3, x0 = 1150, y0 = 80] = process.argv.slice(2).map(Number);
const VW = 480, VH = 272;
const map = readPng(`out/levels/${String(sec).padStart(2, '0')}.png`);
const items = JSON.parse(readFileSync('out/levels/items.json', 'utf8')).sections[sec] ?? [];
const px = new Array(VW * VH);
for (let y = 0; y < VH; y++) for (let x = 0; x < VW; x++) px[y * VW + x] = map.px[(y0 + y) * map.w + x0 + x] & 0xffffff;
let n = 0;
for (const it of items) {
  const pic = readPng(`out/levels/${it.img}`);
  const ox = it.x + it.dx - x0, oy = it.y + it.dy - y0;
  if (ox + pic.w <= 0 || oy + pic.h <= 0 || ox >= VW || oy >= VH) continue;
  n++;
  for (let y = 0; y < pic.h; y++) {
    for (let x = 0; x < pic.w; x++) {
      if (pic.alpha && !pic.alpha[y * pic.w + x]) continue;
      const c = pic.px[y * pic.w + x];
      const X = ox + x, Y = oy + y;
      if (X >= 0 && Y >= 0 && X < VW && Y < VH) px[Y * VW + X] = c;
    }
  }
}
writeFileSync('out/art/items.png', encodePng(px, VW, VH, 2));
console.log(`out/art/items.png: section ${sec + 1}, x ${x0}-${x0 + VW}, y ${y0}-${y0 + VH}, ${n} items`);
