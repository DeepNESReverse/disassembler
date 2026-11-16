/**
 * The flood channel's row table (header 6's "layout" word, CPU $935C in bank 6): one word a row of
 * blocks, read by `$DA53`/`$DA33` through `($CC)`. Prints the pointers and how many rows the TAS's
 * camera covers (`$C6/$C7` over the ride).
 *   node --experimental-strip-types --no-warnings src/experiments/bike-rows.ts
 */
import { area, prg } from '../level.ts';
import { readCapture } from '../capture.ts';

const a = area(6);
const bank = a.bank;
const inBank = (cpu: number) => bank * 0x2000 + (cpu - 0x8000);
const rows: number[] = [];
for (let r = 0; r < 400; r++) rows.push(prg[a.layoutAt + 2 * r] | (prg[a.layoutAt + 2 * r + 1] << 8));
const distinct = new Set(rows.slice(0, 400));
console.log('first rows', rows.slice(0, 24).map((p) => p.toString(16)).join(' '));
console.log('rows 360-399', rows.slice(360, 400).map((p) => p.toString(16)).join(' '));
console.log(`${distinct.size} distinct pointers in 400 words; first outside $9000-$BFFF at row ${rows.findIndex((p) => p < 0x9000 || p > 0xbfff)}`);
let minX = Infinity, maxX = -Infinity, minY = Infinity, maxY = -Infinity;
for (const c of readCapture()) {
  if (c.frame < 9188 || c.frame > 12430 || c.ram[0xd1] !== 1) continue;
  const x = (c.ram[0xc5] << 8) | c.ram[0xc4];
  const y = (c.ram[0xc7] << 8) | c.ram[0xc6];
  minX = Math.min(minX, x); maxX = Math.max(maxX, x); minY = Math.min(minY, y); maxY = Math.max(maxY, y);
}
console.log(`camera x ${minX}-${maxX}, y ${minY}-${maxY} (block rows ${minY >> 4}-${(maxY >> 4) + 15})`);
console.log('a row at', inBank(rows[0]).toString(16));
