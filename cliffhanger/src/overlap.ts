/**
 * Where two section maps show the same ground: the game repeats the end of a section at the start
 * of the next (the user saw it: section 1's last screen is section 2's first), so a seam is an
 * overlap, not an edge. The maps (out/levels/<nn>.png) are cut into 8 × 8 tiles, each kept as a
 * hash of its pixels; b is tried at every tile offset near a guess, and an offset scores by how many
 * of the overlapping tiles are the same, counting only tiles that are not one colour in both (the
 * sky would match anywhere).
 *   node --experimental-strip-types --no-warnings src/overlap.ts <a> <b> [dx dy]
 */
import { readPng } from './png-read.ts';

export interface Grid {
  w: number;
  h: number;
  hash: Int32Array;
  flat: Uint8Array;
}

const grids = new Map<number, Grid>();

/** A section's map as tile hashes. */
export function gridOf(section: number): Grid {
  const got = grids.get(section);
  if (got) return got;
  const { w, h, px } = readPng(`out/levels/${String(section).padStart(2, '0')}.png`);
  const gw = w >> 3;
  const gh = h >> 3;
  const hash = new Int32Array(gw * gh);
  const flat = new Uint8Array(gw * gh);
  for (let ty = 0; ty < gh; ty++) {
    for (let tx = 0; tx < gw; tx++) {
      let v = 0x811c9dc5;
      const first = px[ty * 8 * w + tx * 8];
      let one = 1;
      for (let y = 0; y < 8; y++) {
        for (let x = 0; x < 8; x++) {
          const p = px[(ty * 8 + y) * w + tx * 8 + x];
          if (p !== first) one = 0;
          v = Math.imul(v ^ p, 0x01000193);
        }
      }
      hash[ty * gw + tx] = v;
      flat[ty * gw + tx] = one;
    }
  }
  const g = { w: gw, h: gh, hash, flat };
  grids.set(section, g);
  return g;
}

export interface Fit {
  /** b's top-left in a's pixels. */
  dx: number;
  dy: number;
  same: number;
  compared: number;
  score: number;
}

/** The best overlap of b on a within `range` tiles of the guess (in pixels). */
export function overlap(a: number, b: number, guess: { dx: number; dy: number }, range = { x: 64, y: 48 }): Fit | null {
  const A = gridOf(a);
  const B = gridOf(b);
  const gx = Math.round(guess.dx / 8);
  const gy = Math.round(guess.dy / 8);
  let best: Fit | null = null;
  for (let oy = gy - range.y; oy <= gy + range.y; oy++) {
    for (let ox = gx - range.x; ox <= gx + range.x; ox++) {
      // The overlap in a's tiles.
      const x0 = Math.max(0, ox), x1 = Math.min(A.w, ox + B.w);
      const y0 = Math.max(0, oy), y1 = Math.min(A.h, oy + B.h);
      if (x1 - x0 < 8 || y1 - y0 < 8) continue;
      let same = 0;
      let compared = 0;
      for (let y = y0; y < y1; y++) {
        for (let x = x0; x < x1; x++) {
          const i = y * A.w + x;
          const j = (y - oy) * B.w + (x - ox);
          if (A.flat[i] && B.flat[j]) continue;
          compared++;
          if (A.hash[i] === B.hash[j]) same++;
        }
      }
      if (compared < 48) continue;
      const score = same / compared;
      // The most tiles the same; among those as good, the larger overlap.
      if (!best || same * score > best.same * best.score) best = { dx: ox * 8, dy: oy * 8, same, compared, score };
    }
  }
  return best;
}

if (import.meta.url === `file://${process.argv[1]}`) {
  const [a, b, dx = 0, dy = 0] = process.argv.slice(2).map(Number);
  console.log(overlap(a, b, { dx, dy }));
}
