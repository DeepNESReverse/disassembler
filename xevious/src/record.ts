/**
 * Gathers the map: one row each time the field has moved 8 pixels, read four rows below the top of
 * the screen, where the game has long since finished it. Row 0 is the first to arrive; the rows of
 * the opening screen, under it, are numbered from -1 down. Also counts the background palettes.
 *
 *   node --experimental-strip-types --no-warnings src/record.ts [frames]   → runs/world.json
 */
import { mkdirSync, writeFileSync } from 'node:fs';
import { fly, tableRow } from './flight.ts';

const FRAMES = Number(process.argv[2] ?? 112000);
type Row = { tiles: number[]; palettes: number[]; colours?: string };
const rows: Row[] = [];
const opening: Row[] = [];
const colours = new Map<string, number>();

fly(FRAMES, ({ world, y, moved, snap }) => {
  if (world === 0) return;
  const key = Buffer.from(snap.palette.subarray(0, 16)).toString('hex');
  colours.set(key, (colours.get(key) ?? 0) + 1);
  if (!moved || world % 8) return;
  if (world === 8)
    for (let s = 5; s < 30; s++) opening.push(tableRow(snap, ((y >> 3) + s) % 60));
  rows.push({ ...tableRow(snap, ((y >> 3) + 4) % 60), colours: key });
});

mkdirSync('runs', { recursive: true });
writeFileSync('runs/world.json', JSON.stringify({ opening, rows, colours: [...colours].sort((a, b) => b[1] - a[1]) }));
console.log(`${rows.length} rows, ${opening.length} under the first; palettes:`);
for (const [key, count] of [...colours].sort((a, b) => b[1] - a[1]).slice(0, 8)) console.log(key, count);
