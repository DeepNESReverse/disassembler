/**
 * Run the game with a script of held buttons and save frames, for finding one's way:
 *   node --experimental-strip-types src/shots.ts <out dir> "wait 120, start 4, every 30 f, wait 600"
 * Steps as xrom-libs' snap: `wait N`, `<buttons> N`, `shot name`, `every N name`, plus `poke $addr=$v`.
 */
import { romFile } from './rom.ts';
import { mkdirSync, writeFileSync } from 'node:fs';
import { join } from 'node:path';
import { encodePng } from '../../xrom-libs/nes/src/png.ts';
import { HEIGHT, WIDTH } from '../../xrom-libs/nes/src/ppu.ts';
import { BUTTON, Machine } from './machine.ts';

export function buttonsOf(spec: string): number {
  return spec.split('+').reduce((m, b) => m | (BUTTON[(b === 'a' || b === 'b' ? b.toUpperCase() : b) as keyof typeof BUTTON] ?? 0), 0);
}

/** Run a script of steps on `m`, calling `shot` where asked. */
export function runScript(m: Machine, script: string, shot: (name: string) => void = () => {}) {
  let every = 0, everyName = '', count = 0;
  const frames = (n: number, b: number) => {
    for (let i = 0; i < n; i++) {
      m.frame(b);
      if (every && m.nes.frame % every === 0) shot(`${everyName}-${String(count++).padStart(4, '0')}`);
    }
  };
  for (const step of script.split(',').map((s) => s.trim()).filter(Boolean)) {
    const [verb, arg, arg2] = step.split(/\s+/);
    if (verb === 'wait') frames(Number(arg), 0);
    else if (verb === 'shot') shot(arg);
    else if (verb === 'every') { every = Number(arg); everyName = arg2 ?? 'f'; count = 0; }
    else if (verb === 'poke') {
      const [a, v] = arg.split('=').map((x) => parseInt(x.replace('$', ''), 16));
      m.ram[a & 0x7ff] = v;
    } else {
      const b = buttonsOf(verb);
      if (!b) throw new Error(`unknown step: ${step}`);
      frames(Number(arg ?? 1), b);
    }
  }
}

if (import.meta.url === `file://${process.argv[1]}`) {
  const [out, script] = process.argv.slice(2);
  mkdirSync(out, { recursive: true });
  const m = new Machine(romFile());
  runScript(m, script, (name) => {
    const s = m.ppu.snapshot();
    writeFileSync(join(out, `${name}.png`), encodePng(s.pixels, WIDTH, HEIGHT));
    console.log(`frame ${m.nes.frame}: ${name}`);
  });
}
