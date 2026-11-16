/**
 * The life of an area's placed objects in the run: per list entry (known in the slots by its flags
 * byte, `$04C8,X`, and its place) the frames it is in a slot, and where the player was when it left
 * one; and a picture of it from the first frame it is well in view -> runs/objects/<$D1>-<kind>-<flags>-<frame>.png.
 *   node --experimental-strip-types --no-warnings src/experiments/object-life.ts <$D1> <from> <to> [kind hex]
 */
import { mkdirSync, writeFileSync } from 'node:fs';
import { encodePng } from '../../libs/nes/src/png.ts';
import { WIDTH } from '../../libs/nes/src/ppu.ts';
import { objectsOf } from '../objects.ts';
import { Run } from '../run.ts';

const [d1, from, to] = process.argv.slice(2, 5).map(Number);
const kind = process.argv[5] ? parseInt(process.argv[5], 16) : -1;
const placed = objectsOf(d1).filter((p) => kind < 0 || p.kind === kind);
const run = new Run();
const m = run.m;
mkdirSync('runs/objects', { recursive: true });
const life = new Map<number, { first: number; last: number; shot: boolean; gone: string }>();
for (let f = from; f <= to; f++) {
  run.to(f);
  const r = m.ram;
  if (r[0xd1] !== d1) continue;
  const camX = ((r[0xc5] << 8) | r[0xc4]) + 16;
  const camY = (r[0xc7] << 8) | r[0xc6];
  const here = new Set<number>();
  for (let x = 2; x < 0x20; x += 2) {
    const ox = r[0x427 + x] | (r[0x428 + x] << 8);
    const oy = r[0x447 + x] | (r[0x448 + x] << 8);
    const p = placed.find((q) => q.flags === r[0x4c8 + x] && Math.abs(q.x - ox) < 64 && Math.abs(q.y - oy) < 64);
    if (!p) continue;
    here.add(p.at);
    const l = life.get(p.at) ?? { first: f, last: f, shot: false, gone: '' };
    l.last = f;
    life.set(p.at, l);
    const sx = ox - camX;
    const sy = oy - camY;
    if (!l.shot && sx > 24 && sx < 232 && sy > 40 && sy < 200) {
      l.shot = true;
      const W = 48, H = 48, px = new Uint32Array(W * H);
      for (let y = 0; y < H; y++) for (let x2 = 0; x2 < W; x2++) px[y * W + x2] = m.ppu.pixels[(sy - 40 + y) * WIDTH + sx - 24 + x2];
      writeFileSync(`runs/objects/${d1}-${p.kind.toString(16)}-${p.flags.toString(16)}-${f}.png`, encodePng(px, W, H, 2));
    }
  }
  for (const [at, l] of life) if (l.last === f - 1 && !here.has(at) && !l.gone) l.gone = `player ${r[0x427] | (r[0x428] << 8)},${r[0x447] | (r[0x448] << 8)}`;
}
for (const p of placed) {
  const l = life.get(p.at);
  console.log(`flags ${p.flags.toString(16)} kind $${p.kind.toString(16)} at ${p.x},${p.y}: ${l ? `in a slot ${l.first}-${l.last}, left it with the ${l.gone || '(still there)'}` : 'never in a slot'}`);
}
