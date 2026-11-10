/**
 * The user's way to a place the search missed (level 1): right to the ladder at X ≈ 860, down it to
 * (868, 224), right to the second ladder at X ≈ 900, down it to Y ≈ 320 (the user's point (915, 319);
 * Randil's trail goes there too), then left as far as it goes.
 * Every frame what the camera's field covers is added to level 1's search rows in visible.json.
 * Untouchable, health and timer held; no no-clip.
 */
import { readFileSync, writeFileSync } from 'node:fs';
import { BUTTON } from '../machine.ts';
import { cardState } from '../teleport.ts';
import { cheats } from '../paths.ts';
import { Level } from '../level.ts';

const { m } = cardState(0);
const level = new Level(m.cart.prg, 0);
const W = level.widthTiles, H = level.heightTiles;
const all = JSON.parse(readFileSync('out/levels/visible.json', 'utf8'));
const v = all[1];
const decode = (rows: string[]) => { const a = new Uint8Array(W * H); rows.forEach((row, ty) => { let x = 0, s = false; for (const k of row.split(',').map(Number)) { if (s) a.fill(1, ty * W + x, ty * W + x + k); x += k; s = !s; } }); return a; };
const encode = (a: Uint8Array) => Array.from({ length: H }, (_, ty) => { const runs: number[] = []; let c = 0, k = 0; for (let tx = 0; tx < W; tx++) { const t = a[ty * W + tx]; if (t === c) k++; else { runs.push(k); c = t; k = 1; } } runs.push(k); return runs.join(','); });
const run = decode(v.run), search = decode(v.search);
let added = 0;
const r = m.ram;
const mark = () => {
  const cx = ((r[0x1a] | (r[0x1b] << 8)) << 16) >> 16, cy = ((r[0x1c] | (r[0x1d] << 8)) << 16) >> 16;
  const x0 = Math.floor(cx / 8), y0 = Math.floor(cy / 8), x1 = Math.ceil((cx + 256) / 8), y1 = Math.ceil((cy + 176) / 8);
  for (let ty = Math.max(0, y0); ty < Math.min(H, y1); ty++) for (let tx = Math.max(0, x0); tx < Math.min(W, x1); tx++) {
    const i = ty * W + tx;
    if (!run[i] && !search[i]) { search[i] = 1; added++; }
  }
};
m.nes.beforeVblank = () => cheats(m, true);
m.frames(1185 - 900);
const px = () => r[0x420] | (r[0x440] << 8), py = () => r[0x460] | (r[0x480] << 8);
const go = (b: number, n: number) => { for (let i = 0; i < n; i++) { m.frame(b); mark(); } };
while (px() < 860) go(BUTTON.right, 1);
go(BUTTON.down, 300);
console.log('first ladder down', px(), py());
while (px() < 898) go(BUTTON.right, 1);
go(BUTTON.down, 200);
console.log('second ladder down', px(), py());
// Left as far as it goes; stopped, first a jump left (a step up — the floor left of (838, 320) is
// 16 px higher), then Up (a door's panel: the user), and on — up to eight stops.
for (let tries = 0; tries < 8; tries++) {
  let still = 0, last = -1;
  while (still < 60) { go(BUTTON.left, 1); still = px() === last ? still + 1 : 0; last = px(); }
  console.log('stopped at', px(), py());
  const before = px();
  go(BUTTON.B | BUTTON.left, 40);
  go(0, 20);
  if (px() !== before) continue;
  // The panel may be a little right of where the door stops him: Up from a few places right of it.
  let through = false;
  for (const step of [0, 4, 8, 12, 16, 24]) {
    go(BUTTON.right, step);
    go(BUTTON.up, 8);
    go(0, 30);
    const at = px();
    go(BUTTON.left, 60);
    if (px() < before - 8) { console.log(`through, after Up at ${at}`); through = true; break; }
  }
  if (!through) { console.log(`no way left from ${before}`); break; }
}
console.log('left as far as it goes', px(), py(), 'camera', r[0x1a] | (r[0x1b] << 8), r[0x1c] | (r[0x1d] << 8), `; tiles added ${added}`);
v.search = encode(search);
v.searchOnly += added; v.total += added;
writeFileSync('out/levels/visible.json', JSON.stringify(all) + '\n');
// The game's picture there, and the map's region the camera covers, side by side.
import('../../libs/nes/src/png.ts').then(({ encodePng }) => {
  writeFileSync('runs/walk-left-frame.png', encodePng(m.ppu.snapshot().pixels, 256, 240));
});
