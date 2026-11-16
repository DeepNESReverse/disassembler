/**
 * The Items chapter's card on xrom.dev: every kind of item once, as the chapter's table has them
 * (the first picture of each kind in items.json, by id), in a grid on the site's dark, ×4 with the
 * pixels kept sharp → out/art/items.png (960 × 544, the run's card's size).
 *   node --experimental-strip-types --no-warnings src/items-preview.ts
 */
import { readFileSync, writeFileSync } from 'node:fs';
import { encodePng } from '../libs/nes/src/png.ts';
import { readPng } from './png-read.ts';

const W = 240, H = 136, SCALE = 4, COLS = 6;
const sections = JSON.parse(readFileSync('out/levels/items.json', 'utf8')).sections as Record<string, { kind: number; img: string }[]>;
const byKind = new Map<number, string>();
for (const list of Object.values(sections)) for (const it of list) if (!byKind.has(it.kind)) byKind.set(it.kind, it.img);
const kinds = [...byKind.keys()].sort((a, b) => a - b);
const rows = Math.ceil(kinds.length / COLS);
const cw = W / COLS, ch = H / rows;
const px = new Array(W * H).fill(0x111111);
kinds.forEach((kind, i) => {
  const pic = readPng(`out/levels/${byKind.get(kind)}`);
  const ox = Math.round((i % COLS) * cw + (cw - pic.w) / 2), oy = Math.round(Math.floor(i / COLS) * ch + (ch - pic.h) / 2);
  for (let y = 0; y < pic.h; y++) {
    for (let x = 0; x < pic.w; x++) {
      if (pic.alpha && !pic.alpha[y * pic.w + x]) continue;
      px[(oy + y) * W + ox + x] = pic.px[y * pic.w + x];
    }
  }
});
writeFileSync('out/art/items.png', encodePng(px, W, H, SCALE));
console.log(`out/art/items.png: ${kinds.length} kinds, ${W * SCALE} × ${H * SCALE}`);
