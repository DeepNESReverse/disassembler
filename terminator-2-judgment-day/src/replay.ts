/**
 * The TAS played straight from its .fm2 on the headless NES — before any FCEUX capture exists — to
 * see how far it gets here (STATUS §2: it parts from FCEUX on the screen after the title).
 *   node --experimental-strip-types --no-warnings src/replay.ts [--off N] [--until F] [--every N] [--out DIR]
 *
 * Prints every frame the area cell `$D1` changes (what the level loads, see the workshop's T2 notes)
 * and writes a picture there, plus one every `--every` frames (default 600), to `runs/replay/`.
 * The pad changes at line 241, as sync.ts does it (FCEUX's frame ends there).
 */
import { mkdirSync, writeFileSync } from 'node:fs';
import { join } from 'node:path';
import { encodePng } from '../libs/nes/src/png.ts';
import { HEIGHT, WIDTH } from '../libs/nes/src/ppu.ts';
import { Machine } from './machine.ts';
import { readMovie } from './movie.ts';
import { romFile } from './rom.ts';

const args = process.argv.slice(2);
const opt = (k: string, d: number) => (args.includes(k) ? Number(args[args.indexOf(k) + 1]) : d);
const off = opt('--off', 2);
const every = opt('--every', 600);
const dir = args.includes('--out') ? args[args.indexOf('--out') + 1] : 'runs/replay';
mkdirSync(dir, { recursive: true });

const movie = readMovie();
const until = opt('--until', movie.pads.length - 1 + 600);
const m = new Machine(romFile());
const watch = [0xd1];
const last = new Map<number, number>();
let at = off;
let done = false;
const shot = (name: string) => writeFileSync(join(dir, `${name}.png`), encodePng(m.ppu.pixels, WIDTH, HEIGHT, 1));
const hex = (v: number) => v.toString(16).padStart(2, '0');

m.nes.beforeVblank = () => {
  if (at > until) return void (done = true);
  for (const a of watch) {
    const v = m.ram[a];
    if (last.get(a) !== v) {
      if (last.has(a)) console.log(`frame ${at}: $${a.toString(16)} ${hex(last.get(a)!)} -> ${hex(v)}`);
      last.set(a, v);
    }
  }
  m.nes.buttons = movie.pads[at + 1] ?? 0;
  at++;
};
let n = 0;
while (!done) {
  const before = m.ram[0xd1];
  m.frame(m.nes.buttons);
  const f = at - 1;
  if (m.ram[0xd1] !== before) shot(`d1-${String(f).padStart(5, '0')}-${hex(m.ram[0xd1])}`);
  // A picture a while after each change too (the level itself, past the cards and fades).
  if (every && f % every === 0) shot(`f-${String(f).padStart(5, '0')}`), n++;
}
console.log(`played to movie frame ${at - 1} (movie has ${movie.pads.length - 1}); ${n} pictures in ${dir}`);
