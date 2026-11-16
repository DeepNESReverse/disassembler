/**
 * The objects of a stretch of the capture by their `$0547` (the slot's kind of handler): how many
 * frames each is seen, its highest health (`$04E7`), where — to tell a boss from the plain enemies.
 *   node --experimental-strip-types --no-warnings src/experiments/enemy-kinds.ts <from> <to>
 */
import { readCapture } from '../capture.ts';

const [from, to] = process.argv.slice(2).map(Number);
const kinds = new Map<number, { frames: number; hp: number; first: number; last: number; d1: Set<number> }>();
for (const c of readCapture()) {
  if (c.frame < from) continue;
  if (c.frame > to) break;
  const r = c.ram;
  for (let y = 2; y < 0x20; y += 2) {
    const k = r[0x547 + y];
    if (!k) continue;
    const e = kinds.get(k) ?? { frames: 0, hp: 0, first: c.frame, last: 0, d1: new Set() };
    e.frames++;
    const hp = r[0x4e7 + y];
    if (hp < 0x80) e.hp = Math.max(e.hp, hp);
    e.last = c.frame;
    e.d1.add(r[0xd1]);
    kinds.set(k, e);
  }
}
for (const [k, e] of [...kinds].sort((p, q) => p[0] - q[0])) {
  console.log(`$0547 ${k.toString(16).padStart(2, '0')}: ${e.frames} slot-frames, health up to ${e.hp}, frames ${e.first}-${e.last}, $D1 ${[...e.d1].join(',')}`);
}
