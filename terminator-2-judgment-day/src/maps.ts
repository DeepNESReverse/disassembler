/**
 * The maps the page shows (its levels, in the game's order) and where each area lies on them
 * (STATUS §10). Level 1 is two areas glued: the bar's inside (header 8) right after the truck stop
 * (header 5), whose last screen is the bar's porch and door — the T-800 walks in at the right edge and
 * the bar starts there, shrunk so that its ceiling and floor go on from the porch's roof and floor
 * (by the user's word): the porch's roof begins at row 128 of the truck stop and its floor at 202,
 * the bar's ceiling beam at row 66 and its floor beam at 178 — so the bar is drawn at 74 / 112 of its
 * size, its top at 128 - 66 × that. While the T-800 is inside, the page scales the game's frame the
 * same and zooms to the bar (src/play/player.js). The others are one area each, at their size.
 *
 *   placeOf(header) → { n, k, dx, dy }: the page level, and map = k × the area's own coordinates
 *   (its decoded world: the camera's, level.ts) + (dx, dy).
 *   node --experimental-strip-types --no-warnings src/maps.ts   → out/levels/maps.json for the page
 */
import { readFileSync, writeFileSync } from 'node:fs';
import { BIKE, NAMES, area } from './level.ts';

interface Piece { header: number; x: number; y: number; k?: number }
/** The bar's scale: the porch's roof-to-floor (202 - 128) over the bar's (178 - 66). */
const BAR_K = 74 / 112;
export const MAPS: { label: string; pieces: Piece[] }[] = [
  { label: 'Level 1 — the truck stop and the bar', pieces: [{ header: 5, x: 0, y: 0 }, { header: 8, x: 2560, y: 128 - 66 * BAR_K, k: BAR_K }] },
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

export function placeOf(header: number): { n: number; k: number; dx: number; dy: number } {
  for (let i = 0; i < MAPS.length; i++) {
    const p = MAPS[i].pieces.find((q) => q.header === header);
    if (p) {
      const im = imageOf(header);
      const k = p.k ?? 1;
      return { n: i + 1, k, dx: p.x - k * im.x, dy: p.y - k * im.y };
    }
  }
  throw new Error(`header ${header} is on no map`);
}

if (import.meta.url === `file://${process.argv[1]}`) {
  const levels = MAPS.map((m, i) => {
    const pieces = m.pieces.map((p) => {
      const im = imageOf(p.header);
      const k = p.k ?? 1;
      return { header: p.header, name: NAMES[p.header], src: im.src, x: p.x, y: p.y, w: im.w * k, h: im.h * k, k, dx: p.x - k * im.x, dy: p.y - k * im.y };
    });
    return {
      n: i + 1,
      label: m.label,
      w: Math.ceil(Math.max(...pieces.map((p) => p.x + p.w))),
      h: Math.ceil(Math.max(...pieces.map((p) => p.y + p.h))),
      pieces,
    };
  });
  writeFileSync('out/levels/maps.json', JSON.stringify({ levels }, null, 1) + '\n');
  for (const l of levels) console.log(`${l.n} ${l.label}: ${l.w} × ${l.h}, ${l.pieces.map((p) => `${p.src} at ${p.x.toFixed(1)},${p.y.toFixed(1)}${p.k !== 1 ? ` ×${p.k.toFixed(3)}` : ''}`).join(', ')}`);
}
