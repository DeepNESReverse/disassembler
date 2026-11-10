/**
 * Is object type 01 a prisoner? Level 1, no-clip: fly the player to each object of the header's
 * table in turn, rest on it 120 frames, and watch $0746/$0747 (header $2F: 4 on level 1) and a
 * picture of the moment.
 */
import { writeFileSync, mkdirSync } from 'node:fs';
import { encodePng } from '../../libs/nes/src/png.ts';
import { cardState, loadState } from '../teleport.ts';
import { lead, noclip, route } from '../noclip.ts';
import { saveState } from '../machine.ts';
import { Level } from '../level.ts';

const n = Number(process.argv[2] ?? 1) - 1;
const which = process.argv.slice(3).map(Number);
const { m } = cardState(n);
const lv = new Level(m.cart.prg, n);
const h = lv.header;
const t = h.bytes[0x1e - 4 + 12] | (h.bytes[0x1e - 4 + 13] << 8);
const b = (a: number) => m.cart.prg[h.blocksBank * 0x2000 + (a & 0x1fff)];
let cur: [number, number] | null = null;
m.nes.beforeVblank = noclip(m, () => cur);
m.frames(1180 - 900);
const start = saveState(m);
const r = m.ram;
mkdirSync('runs/prisoners', { recursive: true });
for (const i of which) {
  loadState(m, start);
  const x = b(t + i) | (b(t + 32 + i) << 8), y = b(t + 64 + i) | (b(t + 96 + i) << 8), type = b(t + 128 + i);
  // Lead the camera there (top-left so that the object is mid-screen), then put the player on it.
  const goal: [number, number] = [Math.max(0, x - 128), Math.max(0, y - 88)];
  const camera = () => [((r[0x1a] | (r[0x1b] << 8)) << 16) >> 16, ((r[0x1c] | (r[0x1d] << 8)) << 16) >> 16] as [number, number];
  for (const wp of route(camera(), goal))
    for (let f = 0; f < 4000; f++) {
      cur = lead(m, wp);
      m.frame(0);
      const [cx, cy] = camera();
      if (Math.abs(cx - wp[0]) <= 3 && Math.abs(cy - wp[1]) <= 3) break;
    }
  const before = `${r[0x746]}${r[0x747]}`;
  writeFileSync(`runs/prisoners/${i}-near.png`, encodePng(m.ppu.snapshot().pixels, 256, 240));
  for (let f = 0; f < 120; f++) { cur = [x, y]; m.frame(0); }
  writeFileSync(`runs/prisoners/${i}-on.png`, encodePng(m.ppu.snapshot().pixels, 256, 240));
  console.log(`object ${i} type ${type.toString(16)} at ${x},${y}: $0746/$0747 ${before} → ${r[0x746]}${r[0x747]}`);
}
