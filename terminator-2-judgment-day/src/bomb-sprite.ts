/**
 * The bomb as the game draws it, for the map's layer (STATUS §15): on a frame where a bomb lies in
 * view and the player is away from it, the PPU's sprite layer around the bomb's place, cut to what is
 * there -> out/levels/bomb.png (transparent elsewhere) and its offset from the object's X/Y in
 * out/levels/bombs.json (`sprite`).
 *   node --experimental-strip-types --no-warnings src/bomb-sprite.ts [frame]
 */
import { readFileSync, writeFileSync } from 'node:fs';
import { encodePng } from '../libs/nes/src/png.ts';
import { TRANSPARENT, WIDTH } from '../libs/nes/src/ppu.ts';
import { Run } from './run.ts';

// Bomb #2 of the run (1488, 576 in the labs) is in its slot from frame 20 206 and taken on 20 284;
// on 20 255 it is the only sprite within 32 px of its place (later frames have the player in it).
const FRAME = Number(process.argv[2] ?? 20255);
const json = JSON.parse(readFileSync('out/levels/bombs.json', 'utf8'));
const run = new Run();
const m = run.m;
run.to(FRAME);
const r = m.ram;
let bomb: { x: number; y: number } | null = null;
for (let x = 2; x < 0x20; x += 2) {
  const ox = r[0x427 + x] | (r[0x428 + x] << 8);
  const oy = r[0x447 + x] | (r[0x448 + x] << 8);
  const b = json.bombs.find((q: { x: number; y: number; area: number }) => q.area === r[0xd1] && q.x === ox && q.y === oy);
  if (b) bomb = b;
}
if (!bomb) throw new Error(`no bomb in a slot on frame ${FRAME}`);
// The screen: the camera's ($C4/$C6) + the field's offset (16, 0), STATUS §6.
const sx = bomb.x - (((r[0xc5] << 8) | r[0xc4]) + 16);
const sy = bomb.y - ((r[0xc7] << 8) | r[0xc6]);
const sprites = m.ppu.sprites;
let x0 = 999, y0 = 999, x1 = -1, y1 = -1;
for (let y = Math.max(0, sy - 48); y < Math.min(240, sy + 16); y++) {
  for (let x = Math.max(0, sx - 32); x < Math.min(256, sx + 32); x++) {
    if (sprites[y * WIDTH + x] === TRANSPARENT) continue;
    x0 = Math.min(x0, x); x1 = Math.max(x1, x); y0 = Math.min(y0, y); y1 = Math.max(y1, y);
  }
}
const w = x1 - x0 + 1, h = y1 - y0 + 1;
const px = new Uint32Array(w * h);
// Transparent where the sprite layer has nothing: encodePng takes 0xAABBGGRR-less RGB; alpha 0 by
// the layer's TRANSPARENT mark.
for (let y = 0; y < h; y++) for (let x = 0; x < w; x++) {
  const v = sprites[(y0 + y) * WIDTH + x0 + x];
  px[y * w + x] = v === TRANSPARENT ? TRANSPARENT : v;
}
writeFileSync('out/levels/bomb.png', encodePng(px, w, h, 1));
json.sprite = { dx: x0 - sx, dy: y0 - sy, w, h, frame: FRAME };
writeFileSync('out/levels/bombs.json', JSON.stringify(json, null, 1) + '\n');
console.log(`frame ${FRAME}: bomb at ${bomb.x},${bomb.y}, on screen ${sx},${sy}; its sprites ${w} × ${h} at ${x0 - sx},${y0 - sy} from the object`);
