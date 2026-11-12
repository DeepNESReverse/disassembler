/**
 * runs/rows.json → the map as PNGs, the first flown at the bottom:
 *   out/map.png    both nametables, 512 wide, one pass (the game loops after LOOP rows);
 *   out/whole.png  the band the camera reaches (x 96–416, whole tiles round its 99–410), for the page.
 *
 *   node --experimental-strip-types --no-warnings src/render.ts
 */
import { readFileSync, writeFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { Core, parseRom } from './explorer.ts';
import { romFile } from './rom.ts';
import { NES_RGB } from '../libs/nes/src/palette.ts';
import { encodePng } from '../libs/nes/src/png.ts';

const repo = resolve(import.meta.dirname, '..');
/** One pass: rows 4440-4491 of the run equal rows 0-51 (STATUS §3). */
const LOOP = 4440;
const BAND = [96, 416];

const rom = parseRom(romFile());
// The background's pattern table: PPUCTRL bit 4, read in play.
const core = new Core(rom);
for (let i = 0; i < 1000; i++) core.runFrame();
const bgBase = core.ctrl & 0x10 ? 0x1000 : 0;

type Row = { tiles: number[]; pals: number[]; palette: string };
const { opening, rows } = JSON.parse(readFileSync(resolve(repo, 'runs/rows.json'), 'utf8'));
const all: Row[] = [...opening, ...rows].slice(0, LOOP).reverse();
const W = 64 * 8;
const H = all.length * 8;
const px = new Int32Array(W * H);
all.forEach((row, r) => {
  const pal = Buffer.from(row.palette, 'hex');
  for (let c = 0; c < 64; c++) {
    const t = bgBase + row.tiles[c] * 16;
    for (let y = 0; y < 8; y++) {
      const lo = rom.chr[t + y];
      const hi = rom.chr[t + y + 8];
      for (let x = 0; x < 8; x++) {
        const v = ((lo >> (7 - x)) & 1) | (((hi >> (7 - x)) & 1) << 1);
        px[(r * 8 + y) * W + c * 8 + x] = NES_RGB[(v ? pal[row.pals[c] * 4 + v] : pal[0]) & 0x3f];
      }
    }
  }
});
writeFileSync(resolve(repo, 'out/map.png'), encodePng(px, W, H));
const bw = BAND[1] - BAND[0];
const band = new Int32Array(bw * H);
for (let y = 0; y < H; y++) band.set(px.subarray(y * W + BAND[0], y * W + BAND[1]), y * bw);
writeFileSync(resolve(repo, 'out/whole.png'), encodePng(band, bw, H));
console.log(`map ${W}×${H}, whole ${bw}×${H}`);
