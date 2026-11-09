/**
 * The map against the game: on every frame of one pass, every background row on the screen is
 * compared with the map at the camera, tile and palette, cell by cell.
 *
 *   node --experimental-strip-types --no-warnings src/check.ts
 */
import { readFileSync } from 'node:fs';
import { fly, tableRow } from './flight.ts';

type Row = { tiles: number[]; palettes: number[] };
const { opening, rows }: { opening: Row[]; rows: Row[] } = JSON.parse(readFileSync('runs/world.json', 'utf8'));
const LAST = 259 + 15 * 260; // the rows of the sixteen areas
const at = (k: number) => (k >= 0 ? rows[k] : opening[-k - 1]);

const cells = new Array(30).fill(0);
const wrong = new Array(30).fill(0);
const firsts: string[] = [];
let frames = 0;
let done = false;
/** The nametable line of map row 0, read when the field had moved its first 8 pixels. */
let firstLine = -1;
const mod = (a: number, n: number) => ((a % n) + n) % n;
/** Which map row nametable line `line` holds now: rows go up the tables one per 8 pixels moved. */
const mapRow = (world: number, line: number) => {
  const newest = Math.floor(world / 8) - 1;
  return newest + mod(mod(firstLine - newest, 60) - line + 30, 60) - 30;
};
fly(70000, ({ frame, world, y, snap }) => {
  if (world === 8 && firstLine < 0) firstLine = ((y >> 3) + 4) % 60;
  if (done || world < 16) return;
  if (Math.floor(world / 8) - 1 >= LAST) {
    done = true;
    return;
  }
  frames++;
  for (let s = 0; s < 30; s++) {
    const k = mapRow(world, ((y >> 3) + s) % 60);
    if (k >= LAST || k < -opening.length) continue;
    const want = at(k);
    if (!want) continue;
    const got = tableRow(snap, ((y >> 3) + s) % 60);
    for (let c = 0; c < 32; c++) {
      cells[s]++;
      if (got.tiles[c] !== want.tiles[c] || got.palettes[c] !== want.palettes[c]) {
        wrong[s]++;
        if (firsts.length < 30) firsts.push(`frame ${frame} screen row ${s} col ${c} map row ${k}: tile ${got.tiles[c]} pal ${got.palettes[c]}, map ${want.tiles[c]}/${want.palettes[c]}`);
      }
    }
  }
});
console.log(`${frames} frames`);
console.log('screen row: cells wrong of compared');
cells.forEach((n, s) => console.log(String(s).padStart(2), wrong[s], '/', n));
console.log(firsts.join('\n'));
