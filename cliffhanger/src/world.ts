/**
 * The sections glued into one world (STATUS §12) → data/world.json and out/levels/world-seams.png.
 *   node --experimental-strip-types --no-warnings src/world.ts
 *
 * Each section after the first goes where the player, leaving the one before, stands on the same
 * spot as at the next one's start: the player's place on the frame `$0404` turns to the next
 * section (the capture; X kept mod 2048 px, put back beside the camera) against the next section's
 * start (its header, level.ts). When the player leaves near the right edge (as they mostly do,
 * story screen or not), the next section starts at that edge; otherwise where the player stood.
 *
 * Kept apart, by the user's word: the house (section 5, "дом") — sections 4 and 6 are glued to each
 * other, and the house's inside is laid over its outside in section 4 while the run is in it — and
 * section 14, which does not follow section 13.
 */
import { existsSync, readFileSync, writeFileSync } from 'node:fs';
import { readCapture } from './capture.ts';
import { SECTIONS, section } from './level.ts';

const HOUSE = 5;
const APART = 14;

// The player's place as each section is left (the frame $0404 changes).
const exits = new Map<number, { x: number; y: number; frame: number }>();
let prev404 = -1;
for (const c of readCapture()) {
  const r = c.ram;
  if (prev404 >= 0 && r[0x404] !== prev404) {
    const camX = (r[0x19] << 8) | r[0x18];
    let x = ((r[0x617] << 8) | r[0x616]) / 32;
    while (x < camX - 512) x += 2048;
    exits.set(r[0x40a], { x, y: ((r[0x61e] << 8) | r[0x61d]) / 32, frame: c.frame });
  }
  prev404 = r[0x404];
}

const secs = Array.from({ length: SECTIONS }, (_, i) => section(i));
const origin = new Map<number, { x: number; y: number }>([[0, { x: 0, y: 0 }]]);
const joins: { a: number; b: number; dx: number; dy: number; how: string }[] = [];
let a = 0;
for (let b = 1; b < SECTIONS; b++) {
  if (b === HOUSE || b === APART) continue;
  const A = secs[a];
  const B = secs[b];
  // Leaving section 4 the player goes into the house: its door stands for the edge.
  const out = exits.get(a)!;
  const atEdge = out.x > A.width * 8 - 64 || a === HOUSE - 1;
  const dx = atEdge ? A.width * 8 : Math.round(out.x - B.start.x);
  const dy = Math.round(out.y - B.start.y);
  const o = origin.get(a)!;
  origin.set(b, { x: o.x + dx, y: o.y + dy });
  joins.push({ a, b, dx, dy, how: atEdge ? 'at the edge' : 'where the player stood' });
  a = b;
}

// The world's box, from 0.
const placed = [...origin].map(([s, o]) => ({ section: s, x: o.x, y: o.y, w: secs[s].width * 8, h: secs[s].height * 8 }));
const minX = Math.min(...placed.map((p) => p.x));
const minY = Math.min(...placed.map((p) => p.y));
for (const p of placed) (p.x -= minX), (p.y -= minY);
const w = Math.max(...placed.map((p) => p.x + p.w));
const h = Math.max(...placed.map((p) => p.y + p.h));

// The house's outside in section 4 (its log walls and roof, out/levels/04.png: x 2369-2527,
// y 129-241) and its inside laid over it, centred, at its own size.
const s4 = placed.find((p) => p.section === HOUSE - 1)!;
const outside = { x: s4.x + 2369, y: s4.y + 129, w: 159, h: 113 };
const inside = { section: HOUSE, w: secs[HOUSE].width * 8, h: secs[HOUSE].height * 8, x: 0, y: 0 };
inside.x = Math.round(outside.x + outside.w / 2 - inside.w / 2);
inside.y = Math.round(outside.y + outside.h / 2 - inside.h / 2);

const worldJson = JSON.stringify({
  about: 'The sections glued into one world (src/world.ts). pieces: each section\'s top-left in the world, in pixels. house: the outside of the house in section 4 and the inside (section 5) laid over it. apart: shown on its own.',
  w, h, pieces: placed, house: { outside, inside }, apart: [APART], joins,
}, null, 1) + '\n';
writeFileSync('data/world.json', worldJson);
// The page reads it beside the maps.
writeFileSync('out/levels/world.json', worldJson);
console.log(`world ${w} × ${h}`);
for (const j of joins) console.log(`  ${j.a} → ${j.b}: ${j.dx}, ${j.dy} (${j.how})`);
console.log(`  house: outside ${JSON.stringify(outside)}, inside at ${inside.x}, ${inside.y}`);

// The run's path for the page's maps (out/levels/tas.json from take-pack.ts, per section): level 1
// the world (the house's inside where it is laid), level s + 2 section s alone.
if (existsSync('out/levels/tas.json')) {
  const tas = JSON.parse(readFileSync('out/levels/tas.json', 'utf8'));
  const at = new Map<number, { x: number; y: number }>(placed.map((p) => [p.section, p]));
  at.set(HOUSE, inside);
  const world = { segments: [] as number[][][], frames: 0 };
  const levels: Record<number, { segments: number[][][]; frames: number }> = { 1: world };
  for (const [n, lv] of Object.entries(tas.levels) as [string, { segments: number[][][]; frames: number }][]) {
    const s = Number(n) - 1;
    levels[s + 2] = lv;
    if (s === APART) continue;
    const o = at.get(s)!;
    world.frames += lv.frames;
    for (const seg of lv.segments) world.segments.push(seg.map(([x, y, f]) => [x + o.x, y + o.y, f]));
  }
  writeFileSync('out/levels/tas-world.json', JSON.stringify({ source: tas.source, levels }) + '\n');
}
