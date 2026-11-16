/**
 * The maps the page shows (its levels, in the game's order) and where each area lies on them
 * (STATUS §10). Level 1 is two areas glued: the bar's inside (header 8) right after the truck stop
 * (header 5), whose last screen is the bar's porch and door — the T-800 walks in at the right edge and
 * the bar starts there, its ceiling going on from the porch's roof (by the user's word): the roof's
 * top is row 128 of the truck stop, the ceiling beam's row 66 of the bar, so the bar lies 62 px down
 * (its floor then 42 px below the street's). The others are one area each.
 *
 *   placeOf(header) → { n, dx, dy }: the page level and the shift from the area's own coordinates
 *   (its decoded world: the camera's, level.ts) to the map's.
 *   node --experimental-strip-types --no-warnings src/maps.ts   → out/levels/maps.json for the page
 */
import { readFileSync, writeFileSync } from 'node:fs';
import { BIKE, NAMES, area } from './level.ts';

interface Piece { header: number; x: number; y: number }
export const MAPS: { label: string; pieces: Piece[] }[] = [
  { label: 'Level 1 — the truck stop and the bar', pieces: [{ header: 5, x: 0, y: 0 }, { header: 8, x: 2560, y: 62 }] },
  { label: 'Level 2 — the flood channel', pieces: [{ header: 6, x: 0, y: 0 }] },
  { label: 'Level 3 — hospital corridors', pieces: [{ header: 2, x: 0, y: 0 }] },
  { label: 'Level 3 — hospital offices', pieces: [{ header: 1, x: 0, y: 0 }] },
  { label: 'Level 3 — the elevator', pieces: [{ header: 3, x: 0, y: 0 }] },
  { label: 'Level 4 — Cyberdyne corridors', pieces: [{ header: 4, x: 0, y: 0 }] },
  { label: 'Level 4 — Cyberdyne labs', pieces: [{ header: 7, x: 0, y: 0 }] },
  { label: 'Level 5 — the steel mill', pieces: [{ header: 0, x: 0, y: 0 }] },
];

/** An area's picture (out/levels) and where its top-left lies in the area's own coordinates. */
function imageOf(header: number): { src: string; x: number; y: number; w: number; h: number } {
  if (header === BIKE) {
    // The flood channel's corridor, cut out of its world (src/bike-corridor.ts).
    const c = JSON.parse(readFileSync('out/levels/6-corridor.json', 'utf8'));
    return { src: '6-corridor.png', x: c.x, y: c.y, w: c.w, h: c.h };
  }
  const a = area(header);
  return { src: `${header}.png`, x: 0, y: 0, w: a.cols * 16, h: a.rows * 16 };
}

export function placeOf(header: number): { n: number; dx: number; dy: number } {
  for (let i = 0; i < MAPS.length; i++) {
    const p = MAPS[i].pieces.find((q) => q.header === header);
    if (p) {
      const im = imageOf(header);
      return { n: i + 1, dx: p.x - im.x, dy: p.y - im.y };
    }
  }
  throw new Error(`header ${header} is on no map`);
}

if (import.meta.url === `file://${process.argv[1]}`) {
  const levels = MAPS.map((m, i) => {
    const pieces = m.pieces.map((p) => {
      const im = imageOf(p.header);
      return { header: p.header, name: NAMES[p.header], src: im.src, x: p.x, y: p.y, w: im.w, h: im.h, dx: p.x - im.x, dy: p.y - im.y };
    });
    return {
      n: i + 1,
      label: m.label,
      w: Math.max(...pieces.map((p) => p.x + p.w)),
      h: Math.max(...pieces.map((p) => p.y + p.h)),
      pieces,
    };
  });
  writeFileSync('out/levels/maps.json', JSON.stringify({ levels }, null, 1) + '\n');
  for (const l of levels) console.log(`${l.n} ${l.label}: ${l.w} × ${l.h}, ${l.pieces.map((p) => `${p.src} at ${p.x},${p.y}`).join(', ')}`);
}
