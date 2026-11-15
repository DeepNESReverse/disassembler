/**
 * When the player first moves in each section (the capture's RAM) → out/levels/starts.json.
 *   node --experimental-strip-types --no-warnings src/starts.ts
 *
 * A section starts with its tune while the player stands at the start the header gives (level.ts:
 * `$0616/$0617`, `$061D/$061E`); the play begins when that place first changes. The whole-mountain
 * page cuts the wait, but in the first section (the user's word: the tune only once, then only
 * movement from section to section).
 */
import { writeFileSync } from 'node:fs';
import { readCapture } from './capture.ts';
import { SECTIONS, prg } from './level.ts';

const TABLE = 0x1c5e7;
const word = (o: number) => prg[o] | (prg[o + 1] << 8);
const startOf = (s: number) => ({ x: word(TABLE + 12 * s + 8), y: word(TABLE + 12 * s + 10) });

const out: Record<number, { placed: number; moves: number }> = {};
const placed = new Map<number, number>();
for (const c of readCapture()) {
  const r = c.ram;
  const s = r[0x40a];
  if (s >= SECTIONS || out[s]) continue;
  const at = { x: (r[0x617] << 8) | r[0x616], y: (r[0x61e] << 8) | r[0x61d] };
  const st = startOf(s);
  const home = at.x === st.x && at.y === st.y;
  if (!placed.has(s)) {
    if (home) placed.set(s, c.frame);
  } else if (!home) out[s] = { placed: placed.get(s)!, moves: c.frame };
}
writeFileSync('out/levels/starts.json', JSON.stringify(out) + '\n');
for (const [s, v] of Object.entries(out)) console.log(`section ${s}: placed at ${v.placed}, moves at ${v.moves} (${((v.moves - v.placed) / 60.1).toFixed(1)} s)`);
