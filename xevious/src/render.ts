/**
 * The sixteen areas as pictures, from runs/world.json (`record.ts`), and the proof that the map loops:
 * after area 16 the game plays areas 7-16 again, row for row.
 *
 *   node --experimental-strip-types --no-warnings src/render.ts   → out/areas/NN.png, out/overview.png
 *
 * Area 1 is the opening screen's rows and rows 0-258; every other area is 260 rows. A map reads
 * upwards, the first row to arrive at the bottom. The two palettes of the ground installations cycle
 * in play, so each area is drawn in the colours it shows most often.
 */
import { mkdirSync, readFileSync, writeFileSync } from 'node:fs';
import { encodePng } from '../libs/nes/src/png.ts';
import { NES_RGB } from '../libs/nes/src/palette.ts';
import { romFile } from './rom.ts';

type Row = { tiles: number[]; palettes: number[]; colours?: string };
const { opening, rows }: { opening: Row[]; rows: Row[] } = JSON.parse(readFileSync('runs/world.json', 'utf8'));
const rom = romFile();
const prg = rom[4] * 0x4000;
const patterns = rom.subarray(16 + prg + 0x1000, 16 + prg + 0x2000);

export const AREA = 260;
const rowsOf = (n: number) => (n === 1 ? [...[...opening].reverse(), ...rows.slice(0, 259)] : rows.slice(259 + (n - 2) * AREA, 259 + (n - 1) * AREA));

const same = (a: Row, b: Row) => a.tiles.every((t, i) => t === b.tiles[i]) && a.palettes.every((p, i) => p === b.palettes[i]);
let compared = 0;
let differ = 0;
for (let i = 0; 259 + (16 + i) * AREA <= rows.length; i++) {
  const first = rowsOf(7 + (i % 10));
  const again = rowsOf(17 + i);
  first.forEach((row, k) => {
    compared++;
    if (same(row, again[k])) return;
    differ++;
    if (differ <= 12) {
      const cells = row.tiles.flatMap((t, c) => (t === again[k].tiles[c] && row.palettes[c] === again[k].palettes[c] ? [] : [`${c}:${t}/${again[k].tiles[c]}`]));
      console.log(`area ${7 + (i % 10)} row ${k}: ${cells.join(' ')}`);
    }
  });
}
console.log(`the loop: ${compared} rows compared with their first pass, ${differ} differ`);

function draw(area: Row[]) {
  const counts = new Map<string, number>();
  for (const r of area) if (r.colours) counts.set(r.colours, (counts.get(r.colours) ?? 0) + 1);
  const colours = Buffer.from([...counts].sort((a, b) => b[1] - a[1])[0][0], 'hex');
  const height = area.length * 8;
  const pixels = new Uint32Array(256 * height);
  area.forEach((row, k) => {
    const top = height - 8 - k * 8;
    row.tiles.forEach((tile, c) => {
      for (let y = 0; y < 8; y++)
        for (let x = 0; x < 8; x++) {
          const bit = 7 - x;
          const v = ((patterns[tile * 16 + y] >> bit) & 1) | (((patterns[tile * 16 + y + 8] >> bit) & 1) << 1);
          pixels[(top + y) * 256 + c * 8 + x] = NES_RGB[colours[v ? row.palettes[c] * 4 + v : 0] & 0x3f];
        }
    });
  });
  return { pixels, height };
}

mkdirSync('out/areas', { recursive: true });
const drawn = Array.from({ length: 16 }, (_, i) => draw(rowsOf(i + 1)));
drawn.forEach(({ pixels, height }, i) => writeFileSync(`out/areas/${String(i + 1).padStart(2, '0')}.png`, encodePng(pixels, 256, height, 1)));

// The whole flight as one picture: area 1 at the bottom, area 16 at the top.
const total = drawn.reduce((sum, d) => sum + d.height, 0);
const whole = new Uint32Array(256 * total);
let top = 0;
for (let i = drawn.length - 1; i >= 0; i--) {
  whole.set(drawn[i].pixels, top * 256);
  top += drawn[i].height;
}
writeFileSync('out/areas/whole.png', encodePng(whole, 256, total, 1));

// All sixteen side by side at half size, starts along the bottom.
const GAP = 6;
const tallest = Math.max(...drawn.map((d) => d.height)) >> 1;
const width = 16 * 128 + 15 * GAP;
const sheet = new Uint32Array(width * tallest).fill(0x101014);
drawn.forEach(({ pixels, height }, i) => {
  for (let y = 0; y < height >> 1; y++)
    for (let x = 0; x < 128; x++) sheet[(tallest - (height >> 1) + y) * width + i * (128 + GAP) + x] = pixels[y * 2 * 256 + x * 2];
});
writeFileSync('out/overview.png', encodePng(sheet, width, tallest, 1));
console.log(`16 areas: ${drawn.map((d) => d.height).reduce((a, b) => a + b)} px in all`);
