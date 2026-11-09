/**
 * The maps chapter's preview for xrom.dev: Randil's run over a level's map, as the map player shows
 * it (src/take-player.js) — the game's frame inside the camera, drawn from the level's data and the
 * take's sprite page and palette — written frame by frame for src/preview.py to lay over the map.
 *   node --experimental-strip-types src/preview.ts <level 1-12> <first frame> <frames> <step> <out.bin>
 * out.bin: per frame i16 camera X, i16 camera Y, then 256 × 176 RGB.
 */
import { readFileSync, writeFileSync } from 'node:fs';
import { gunzipSync } from 'node:zlib';
import { ROM_PATH } from './rom.ts';
import { Level } from './level.ts';
import { NES_RGB } from '../libs/nes/src/palette.ts';

const [lv, first, count, step, outPath] = process.argv.slice(2);
const n = Number(lv) - 1;
const rom = readFileSync(ROM_PATH);
const prg = rom.subarray(16, 16 + rom[4] * 0x4000), chr = rom.subarray(16 + rom[4] * 0x4000);
const level = new Level(prg, n);

const take = gunzipSync(readFileSync('out/levels/take/randil.bin.gz'));
const frames = take.readUInt32LE(4), nCells = take.readUInt16LE(8);
const cells = Array.from({ length: nCells }, (_, i) => take.readUInt16LE(10 + 2 * i));
const state = new Uint8Array(nCells);
const get = (a: number) => state[cells.indexOf(a)];
let o = 10 + 2 * nCells;
const apply = () => { const c = take.readUInt16LE(o); o += 2; for (let k = 0; k < c; k++, o += 3) state[take.readUInt16LE(o)] = take[o + 2]; };

const rgb = (i: number) => NES_RGB[i & 0x3f];
const bgIndex = new Uint8Array(256 * 176);
const out: Buffer[] = [];
const start = Number(first), end = start + Number(count);
for (let f = 0; f < frames && f < end; f++) {
  apply();
  if (f < start || (f - start) % Number(step)) continue;
  const camX = ((get(0x1a) | (get(0x1b) << 8)) << 16) >> 16, camY = ((get(0x1c) | (get(0x1d) << 8)) << 16) >> 16;
  const px = Buffer.alloc(4 + 256 * 176 * 3);
  px.writeInt16LE(camX, 0); px.writeInt16LE(camY, 2);
  const put = (i: number, c: number) => { px[4 + i * 3] = (c >> 16) & 0xff; px[5 + i * 3] = (c >> 8) & 0xff; px[6 + i * 3] = c & 0xff; };
  const pal = (i: number) => get(0x785 + i);
  const base = level.header.chr * 0x400;
  const fx = ((camX % 8) + 8) % 8, fy = ((camY % 8) + 8) % 8, tx0 = Math.floor(camX / 8), ty0 = Math.floor(camY / 8);
  for (let ty = 0; ty < 23; ty++) for (let tx = 0; tx < 33; tx++) {
    const wx = tx0 + tx, wy = ty0 + ty;
    const inside = wx >= 0 && wy >= 0 && wx < level.widthTiles && wy < level.heightTiles;
    const t = inside ? level.tile(wx, wy) : { tile: 0, palette: 0 };
    for (let y = 0; y < 8; y++) {
      const sy = ty * 8 + y - fy;
      if (sy < 0 || sy >= 176) continue;
      const lo = chr[base + t.tile * 16 + y], hi = chr[base + t.tile * 16 + y + 8];
      for (let x = 0; x < 8; x++) {
        const sx = tx * 8 + x - fx;
        if (sx < 0 || sx >= 256) continue;
        const c = inside ? ((lo >> (7 - x)) & 1) | (((hi >> (7 - x)) & 1) << 1) : 0;
        bgIndex[sy * 256 + sx] = c;
        put(sy * 256 + sx, rgb(c ? pal(t.palette * 4 + c) : pal(0)));
      }
    }
  }
  const banks = [get(0x718), get(0x719), 0x7b, get(0x71a)];
  for (let k = 63; k >= 0; k--) {
    const y = get(0x200 + k * 4);
    if (y >= 0xef) continue;
    const tile = get(0x201 + k * 4), attr = get(0x202 + k * 4), x = get(0x203 + k * 4);
    const off = banks[tile >> 6] * 0x400 + ((tile * 16) & 0x3ff);
    for (let row = 0; row < 8; row++) {
      const sy = y + 1 + row;
      if (sy >= 176) break;
      const r = attr & 0x80 ? 7 - row : row;
      const lo = chr[off + r] ?? 0, hi = chr[off + r + 8] ?? 0;
      for (let col = 0; col < 8; col++) {
        const sx = x + col;
        if (sx >= 256) break;
        if (sx < 8) continue; // PPUMASK $18: no sprites in the leftmost 8 pixels
        const bit = attr & 0x40 ? col : 7 - col;
        const c = ((lo >> bit) & 1) | (((hi >> bit) & 1) << 1);
        if (!c || (attr & 0x20 && bgIndex[sy * 256 + sx])) continue;
        put(sy * 256 + sx, rgb(pal(0x10 + (attr & 3) * 4 + c)));
      }
    }
  }
  out.push(px);
}
writeFileSync(outPath, Buffer.concat(out));
console.log(`${out.length} frames of level ${lv} from ${start}`);
