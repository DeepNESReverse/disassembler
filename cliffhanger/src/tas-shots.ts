/**
 * Pictures of the TAS at given movie frames, as FCEUX showed them:
 *   node --experimental-strip-types --no-warnings src/tas-shots.ts <out dir> <frame> [<frame> …]
 * A frame may be `a-b/step` for every step-th frame from a to b.
 */
import { mkdirSync, writeFileSync } from 'node:fs';
import { join } from 'node:path';
import { encodePng } from '../libs/nes/src/png.ts';
import { HEIGHT, WIDTH } from '../libs/nes/src/ppu.ts';
import { Run } from './run.ts';

const [dir, ...specs] = process.argv.slice(2);
const frames = specs
  .flatMap((s) => {
    const m = s.match(/^(\d+)-(\d+)\/(\d+)$/);
    if (!m) return [Number(s)];
    const out: number[] = [];
    for (let f = +m[1]; f <= +m[2]; f += +m[3]) out.push(f);
    return out;
  })
  .sort((a, b) => a - b);
mkdirSync(dir, { recursive: true });
const run = new Run();
for (const f of frames) {
  run.to(f);
  writeFileSync(join(dir, `${String(f).padStart(5, '0')}.png`), encodePng(run.m.ppu.pixels, WIDTH, HEIGHT, 1));
}
console.log(`${frames.length} pictures in ${dir}`);
