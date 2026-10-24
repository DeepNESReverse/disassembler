/**
 * Is there a prisoner where the table says? Fly the camera so that object i is on screen (no-clip),
 * then put the player on the object's X/Y for 60 frames: a rescue is the counter $0747 going down
 * and this slot's flags $0400+i set to 8 (B14:$DFC2, the type-6 handler). Frames saved before and
 * after as runs/prisoners/L<n>-<i>-{near,on}.png. The flight keeps the player off the objects (it
 * hugs the camera's left edge).
 *   node --experimental-strip-types src/experiments/prisoner-look.ts <level> <object…>
 */
import { mkdirSync, writeFileSync } from 'node:fs';
import { encodePng } from '../../../xrom-libs/nes/src/png.ts';
import { cardState, loadState } from '../teleport.ts';
import { lead, noclip, route } from '../noclip.ts';
import { saveState } from '../machine.ts';
import { readFileSync } from 'node:fs';

const [lvArg, ...objs] = process.argv.slice(2).map(Number);
const n = lvArg - 1;
const table = JSON.parse(readFileSync('out/levels/objects.json', 'utf8'))[lvArg] as { i: number; x: number; y: number; type: number }[];
const { m } = cardState(n);
let cur: [number, number] | null = null;
m.nes.beforeVblank = noclip(m, () => cur);
m.frames(1180 - 900);
const start = saveState(m);
const r = m.ram;
const camera = () => [((r[0x1a] | (r[0x1b] << 8)) << 16) >> 16, ((r[0x1c] | (r[0x1d] << 8)) << 16) >> 16] as [number, number];
mkdirSync('runs/prisoners', { recursive: true });
for (const i of objs) {
  const o = table.find((t) => t.i === i)!;
  loadState(m, start);
  const goal: [number, number] = [Math.max(0, Math.round((o.x - 128) / 2) * 2), Math.max(0, Math.round((o.y - 88) / 2) * 2)];
  for (const wp of route(camera(), goal))
    for (let f = 0; f < 6000; f++) {
      const p = lead(m, wp);
      const [cx0, cy0] = camera();
      // Ahead of the camera on the axis it moves, but never near the screen's middle-right where an
      // object would be: X kept at the left quarter unless the camera goes left.
      cur = wp[0] < cx0 - 2 ? p : [Math.min(p[0], cx0 + 200), p[1]];
      m.frame(0);
      const [cx, cy] = camera();
      if (Math.abs(cx - wp[0]) <= 3 && Math.abs(cy - wp[1]) <= 3) break;
    }
  for (let f = 0; f < 30; f++) { const [cx, cy] = camera(); cur = [cx + 40, cy + 88]; m.frame(0); }
  const [cx, cy] = camera();
  const before = { left: r[0x747], flags: r[0x400 + i], rescued: r[0x68a] };
  writeFileSync(`runs/prisoners/L${lvArg}-${i}-near.png`, encodePng(m.ppu.snapshot().pixels, 256, 240));
  for (let f = 0; f < 60; f++) { cur = [o.x, o.y]; m.frame(0); }
  writeFileSync(`runs/prisoners/L${lvArg}-${i}-on.png`, encodePng(m.ppu.snapshot().pixels, 256, 240));
  console.log(`object ${i} (type ${o.type}) at ${o.x},${o.y}, camera ${cx},${cy}: left $0747 ${before.left} → ${r[0x747]}, flags $0400+i ${before.flags} → ${r[0x400 + i]}, rescued $068A ${before.rescued} → ${r[0x68a]}`);
}
