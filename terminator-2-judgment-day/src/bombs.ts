/**
 * Cyberdyne's bombs (STATUS §15): the yellow canisters the T-800 gathers on level 4, from the areas'
 * object lists (objects.ts) — kind $8BB9 in the corridors (`$D1` 5), kind $8BB2 in the labs (`$D1` 7),
 * both on the level's one map (the labs lie on the corridors at 0, 0, §13) — and, from the run, the
 * frame each one is taken: its slot's `$04E8,X` gets bit 7 (src/experiments/object-slot.ts: the
 * bomb at 536, 576 on frame 19 819, the player at 548 — beside it, turning back).
 * `room`: the bomb lies in a lab — on the rooms' plan, laid over the corridors (maps.ts) — not in a
 * corridor; the page shows each with its own plan (STATUS §16).
 *   node --experimental-strip-types --no-warnings src/bombs.ts   → out/levels/bombs.json
 */
import { writeFileSync } from 'node:fs';
import { objectsOf, type Placed } from './objects.ts';
import { HEADER_OF_AREA } from './level.ts';
import { MAPS } from './maps.ts';
import { Run } from './run.ts';

const KINDS: [number, number][] = [[5, 0x8bb9], [7, 0x8bb2]];
const bombs: (Placed & { d1: number; taken?: number; player?: [number, number] })[] = [];
for (const [d1, kind] of KINDS) for (const p of objectsOf(d1).filter((q) => q.kind === kind)) bombs.push({ ...p, d1 });

const run = new Run();
const m = run.m;
for (let f = 18600; f <= 34300; f++) {
  run.to(f);
  const r = m.ram;
  for (let x = 2; x < 0x20; x += 2) {
    if (!(r[0x4e8 + x] & 0x80)) continue;
    const ox = r[0x427 + x] | (r[0x428 + x] << 8);
    const oy = r[0x447 + x] | (r[0x448 + x] << 8);
    const b = bombs.find((q) => q.d1 === r[0xd1] && q.flags === r[0x4c8 + x] && q.x === ox && q.y === oy);
    if (b && b.taken === undefined) {
      b.taken = f;
      b.player = [r[0x427] | (r[0x428] << 8), r[0x447] | (r[0x448] << 8)];
    }
  }
}
const order = [...bombs].filter((b) => b.taken !== undefined).sort((p, q) => p.taken! - q.taken!);
/** A bomb in a room: its area is laid on the map as an overlay (the labs, maps.ts), not the corridors. */
const inRoom = (d1: number) => MAPS.some((l) => l.pieces.some((p) => p.header === HEADER_OF_AREA[d1] && p.overlay));
const out = bombs.map((b) => ({
  x: b.x, y: b.y, area: b.d1, room: inRoom(b.d1), kind: b.kind, entry: b.at,
  taken: b.taken ?? null, num: b.taken === undefined ? null : order.indexOf(b) + 1,
}));
writeFileSync('out/levels/bombs.json', JSON.stringify({ level: 4, bombs: out }, null, 1) + '\n');
for (const b of bombs) console.log(`$D1 ${b.d1} bomb at ${b.x},${b.y}: ${b.taken === undefined ? 'never taken' : `taken on ${b.taken} (#${order.indexOf(b) + 1}), the player at ${b.player}`}`);
