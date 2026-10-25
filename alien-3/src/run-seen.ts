/**
 * What Randil's run ever shows of each level: the union of the camera's field (256 × 176 from
 * $1A-$1D) over the frames the level is played — from the first frame the player's X/Y changes
 * after $A8 took its value to the last before the next (§21) — at 8-px tiles of the world.
 * → out/levels/run-seen.json: {level: {w, h, rows: [run-length strings]}} (a row: alternating
 * counts of unseen and seen tiles, starting with unseen).
 *   node --experimental-strip-types src/run-seen.ts [take]
 */
import { writeFileSync } from 'node:fs';
import { parseTake } from './take.ts';
import { Level } from './level.ts';
import { loadCart } from './render.ts';

const take = parseTake(process.argv[2] ?? 'fceux/tas_take.play.txt');
const prg = loadCart().prg;
const n = take.buttons.length;
const ram = new Uint8Array(0x800);
const level = new Int8Array(n), cam = new Int32Array(n * 2), pos: string[] = [];
for (let f = 0; f < n; f++) {
  for (const c of take.changes[f]) ram[c >> 8] = c & 255;
  level[f] = ram[0xa8];
  cam[f * 2] = ((ram[0x1a] | (ram[0x1b] << 8)) << 16) >> 16;
  cam[f * 2 + 1] = ((ram[0x1c] | (ram[0x1d] << 8)) << 16) >> 16;
  pos.push(`${ram[0x420]},${ram[0x440]},${ram[0x460]},${ram[0x480]}`);
}
const out: Record<number, { w: number; h: number; rows: string[]; seen: number; tiles: number }> = {};
for (let f = 0; f < n; ) {
  const l = level[f];
  let b = f;
  while (b + 1 < n && level[b + 1] === l) b++;
  // Played: from the first change of X/Y after f to the last change before b.
  let s = f, e = b;
  while (s < b && pos[s + 1] === pos[f]) s++;
  while (e > s && pos[e] === pos[e - 1]) e--;
  if (l < 12) {
    const lv = new Level(prg, l), W = lv.widthTiles, H = lv.heightTiles;
    const seen = (out[l + 1]?.rows ? null : new Uint8Array(W * H)) ?? new Uint8Array(W * H);
    for (let g = s + 1; g <= e; g++) {
      const x0 = Math.floor(cam[g * 2] / 8), y0 = Math.floor(cam[g * 2 + 1] / 8);
      // Every tile the 256 × 176 field touches: 33 × 23 when the camera is not on a tile's edge.
      const x1 = Math.ceil((cam[g * 2] + 256) / 8), y1 = Math.ceil((cam[g * 2 + 1] + 176) / 8);
      for (let ty = Math.max(0, y0); ty < Math.min(H, y1); ty++) for (let tx = Math.max(0, x0); tx < Math.min(W, x1); tx++) seen[ty * W + tx] = 1;
    }
    const rows: string[] = [];
    let total = 0;
    for (let ty = 0; ty < H; ty++) {
      const runs: number[] = [];
      let v = 0, k = 0;
      for (let tx = 0; tx < W; tx++) { const c = seen[ty * W + tx]; total += c; if (c === v) k++; else { runs.push(k); v = c; k = 1; } }
      runs.push(k);
      rows.push(runs.join(','));
    }
    out[l + 1] = { w: W, h: H, rows, seen: total, tiles: W * H };
  }
  f = b + 1;
}
writeFileSync('out/levels/run-seen.json', JSON.stringify(out) + '\n');
for (const [l, o] of Object.entries(out)) console.log(`level ${l}: seen in the run ${o.seen} of ${o.tiles} tiles (${((100 * o.seen) / o.tiles).toFixed(1)} %)`);
