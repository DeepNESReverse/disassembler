/**
 * The game's own pictures for its card and pages on xrom.dev, cut out of frames the cartridge draws
 * (as xrom's scripts/game-art.mjs does, its pieces and sizes) → out/art/:
 *   logo.png   the title screen's logo (the climber on his rope and the name), its white backdrop
 *              left transparent — the game run untouched, the title screen at frame 900
 *   title.png  that title screen whole
 *   cover.png  a strip of a real frame of the TAS, 256 × 160 (section 0, the cabins and the cliffs)
 *   hero.png   the player off the sprite layer alone, trimmed to his opaque pixels
 *   art.json   their sizes
 *   node --experimental-strip-types --no-warnings src/art.ts
 */
import { mkdirSync, writeFileSync } from 'node:fs';
import { encodePng } from '../libs/nes/src/png.ts';
import { TRANSPARENT } from '../libs/nes/src/ppu.ts';
import { Machine } from './machine.ts';
import { romFile } from './rom.ts';
import { Run } from './run.ts';
import { readPng } from './png-read.ts';

const W = 256;
mkdirSync('out/art', { recursive: true });

/** A crop of 0xRRGGBB pixels; `clear` a colour to make transparent (encodePng: alpha above 0xFFFFFF). */
function crop(px: Uint32Array, x: number, y: number, w: number, h: number, clear?: number): Uint32Array {
  const out = new Uint32Array(w * h);
  for (let j = 0; j < h; j++) {
    for (let i = 0; i < w; i++) {
      const p = px[(y + j) * W + x + i] & 0xffffff;
      out[j * w + i] = clear !== undefined && p === clear ? TRANSPARENT : p;
    }
  }
  return out;
}

// The title screen: the game left alone (the TAS skips it).
const m = new Machine(romFile());
for (let i = 0; i < 900; i++) m.frame(0);
const title = m.ppu.pixels.slice();
writeFileSync('out/art/title.png', encodePng(title, W, 240, 1));
// The logo: the climber, his rope and the name (x 16-255, y 38-120 of the title screen).
const logo = { x: 16, y: 38, w: 240, h: 82 };
writeFileSync('out/art/logo.png', encodePng(crop(title, logo.x, logo.y, logo.w, logo.h, 0xffffff), logo.w, logo.h, 1));

// The cover and the hero: frames of the TAS.
const run = new Run();
run.to(1310);
const frame = run.m.ppu.pixels.slice();
const sprites = run.m.ppu.sprites.slice();
const cover = { y: 16, h: 160 };
// The game hides its left 8 columns (the backdrop's stripe): there the cover takes the map's pixels,
// the same ground at the frame's camera (the map matches the frame: STATUS §4), sprites over it.
{
  const rr = run.m.ram;
  const cx = ((rr[0x19] << 8) | rr[0x18]) - 8;
  const cy = (rr[0x1b] << 8) | rr[0x1a];
  const map = readPng('out/levels/00.png');
  for (let y = 0; y < 240; y++) {
    for (let x = 0; x < 8; x++) {
      const mx = cx + x, my = cy + y;
      if (sprites[y * W + x] !== TRANSPARENT || mx < 0 || my < 0 || mx >= map.w || my >= map.h) continue;
      frame[y * W + x] = map.px[my * map.w + mx];
    }
  }
}
writeFileSync('out/art/cover.png', encodePng(crop(frame, 0, cover.y, W, cover.h), W, cover.h, 1));
// The hero: the sprite layer's opaque pixels in a box round the player (his place in RAM is his
// sprites' top-left: src/experiments/player-anchor.ts).
const r = run.m.ram;
const camX = ((r[0x19] << 8) | r[0x18]) - 8;
const camY = (r[0x1b] << 8) | r[0x1a];
const px0 = Math.round(((r[0x617] << 8) | r[0x616]) / 32 - camX);
const py0 = Math.round(((r[0x61e] << 8) | r[0x61d]) / 32 - camY);
let x0 = 256, y0 = 240, x1 = -1, y1 = -1;
for (let y = Math.max(0, py0 - 8); y < Math.min(240, py0 + 48); y++) {
  for (let x = Math.max(0, px0 - 8); x < Math.min(256, px0 + 32); x++) {
    if (sprites[y * W + x] === TRANSPARENT) continue;
    x0 = Math.min(x0, x), (y0 = Math.min(y0, y)), (x1 = Math.max(x1, x)), (y1 = Math.max(y1, y));
  }
}
const hero = { w: x1 - x0 + 1, h: y1 - y0 + 1 };
const heroPx = new Uint32Array(hero.w * hero.h);
for (let y = 0; y < hero.h; y++) for (let x = 0; x < hero.w; x++) heroPx[y * hero.w + x] = sprites[(y0 + y) * W + x0 + x];
writeFileSync('out/art/hero.png', encodePng(heroPx, hero.w, hero.h, 1));

writeFileSync('out/art/art.json', JSON.stringify({ cover: { width: W, height: cover.h }, logo: { width: logo.w, height: logo.h }, hero: { width: hero.w, height: hero.h } }, null, 1));
// The logo's colours, for the site's title and accents.
const count = new Map<number, number>();
for (let i = 0; i < logo.w * logo.h; i++) {
  const p = title[(logo.y + Math.floor(i / logo.w)) * W + logo.x + (i % logo.w)] & 0xffffff;
  if (p !== 0xffffff) count.set(p, (count.get(p) ?? 0) + 1);
}
console.log('logo colours', [...count].sort((a, b) => b[1] - a[1]).map(([c, n]) => `#${c.toString(16).padStart(6, '0')}×${n}`).join(' '));
console.log(`hero ${hero.w}×${hero.h} at ${x0},${y0}`);
