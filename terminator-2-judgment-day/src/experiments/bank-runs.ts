/**
 * The background bank sets of an area's frames, from the packed run: how often each set opens the
 * field (run 0, from line 0) and how often it comes later (after a scanline IRQ switch), and on
 * which lines those later runs start.
 *   node --experimental-strip-types --no-warnings src/experiments/bank-runs.ts <header>
 */
import { readFileSync } from 'node:fs';
import { gunzipSync } from 'node:zlib';
import { BANKS, SIZE } from '../take-pack-layout.ts';

const header = Number(process.argv[2] ?? 0);
const data = gunzipSync(readFileSync('out/levels/take.bin.gz'));
const frames = (data[4] | (data[5] << 8) | (data[6] << 16)) + 1;
const s = new Uint8Array(SIZE);
const first = new Map<string, number>();
const later = new Map<string, { n: number; lines: Map<number, number> }>();
let o = 10;
for (let f = 0; f < frames; f++) {
  const n = data[o] | (data[o + 1] << 8);
  o += 2;
  for (let k = 0; k < n; k++, o += 3) s[data[o] | (data[o + 1] << 8)] = data[o + 2];
  o += 2 + 2 * (data[o] | (data[o + 1] << 8));
  if (s[0] !== header || !s[1]) continue;
  const table = s[6] & 0x10 ? 4 : 0;
  const bg = (r: number) => [0, 1, 2, 3].map((i) => s[BANKS + 9 * r + 1 + table + i].toString(16)).join(',');
  first.set(bg(0), (first.get(bg(0)) ?? 0) + 1);
  for (let r = 1; r < s[12]; r++) {
    if (bg(r) === bg(r - 1)) continue;
    const e = later.get(bg(r)) ?? { n: 0, lines: new Map() };
    e.n++;
    const line = s[BANKS + 9 * r];
    e.lines.set(line, (e.lines.get(line) ?? 0) + 1);
    later.set(bg(r), e);
  }
}
console.log('opening the field:', [...first].sort((p, q) => q[1] - p[1]).map(([k, n]) => `${k}×${n}`).join('  '));
for (const [k, e] of [...later].sort((p, q) => q[1].n - p[1].n)) {
  const lines = [...e.lines].sort((p, q) => p[0] - q[0]);
  console.log(`later ${k} ×${e.n}, lines ${lines[0][0]}-${lines[lines.length - 1][0]}`);
}
