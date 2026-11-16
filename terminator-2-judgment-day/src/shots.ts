/**
 * Pictures of the game run without the TAS: power on, then the steps given, saving frames.
 *   node --experimental-strip-types --no-warnings src/shots.ts <out dir> "wait 600, every 60 f, wait 1200"
 * Steps: `wait N`, `<buttons> N` (a+b, start, right…), `shot name`, `every N name` (then a shot every
 * N frames under that name).
 */
import { mkdirSync, writeFileSync } from 'node:fs';
import { join } from 'node:path';
import { encodePng } from '../libs/nes/src/png.ts';
import { HEIGHT, WIDTH } from '../libs/nes/src/ppu.ts';
import { BUTTON, Machine } from './machine.ts';
import { romFile } from './rom.ts';

const [dir, script = 'wait 600'] = process.argv.slice(2);
mkdirSync(dir, { recursive: true });
const m = new Machine(romFile());
const buttonsOf = (spec: string) =>
  spec.split('+').reduce((b, k) => b | (BUTTON[(k === 'a' || k === 'b' ? k.toUpperCase() : k) as keyof typeof BUTTON] ?? 0), 0);
let every = 0;
let everyName = 'f';
let n = 0;
const shot = (name: string) => writeFileSync(join(dir, `${name}.png`), encodePng(m.ppu.pixels, WIDTH, HEIGHT, 1));
const frames = (count: number, b: number) => {
  for (let i = 0; i < count; i++) {
    m.frame(b);
    if (every && m.nes.frame % every === 0) shot(`${everyName}-${String(n++).padStart(4, '0')}`);
  }
};
for (const step of script.split(',').map((s) => s.trim()).filter(Boolean)) {
  const [verb, arg, arg2] = step.split(/\s+/);
  if (verb === 'wait') frames(Number(arg), 0);
  else if (verb === 'shot') shot(arg);
  else if (verb === 'every') (every = Number(arg)), (everyName = arg2 ?? 'f'), (n = 0);
  else frames(Number(arg ?? 1), buttonsOf(verb));
}
console.log(`frames run: ${m.nes.frame}`);
