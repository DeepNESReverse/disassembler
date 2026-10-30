// The title menu's "Music ON" and "Sound effects ON" (power on, Start at the title): which RAM cell
// does each switch flip? On each line, A is pressed four times; a cell that alternates with every
// press, and only such, is the switch. Frames go to the scratch dir given, to see the menu's text.
import { mkdirSync, writeFileSync } from 'node:fs';
import { encodePng } from '../../../xrom-libs/nes/src/png.ts';
import { HEIGHT, WIDTH } from '../../../xrom-libs/nes/src/ppu.ts';
import { Machine } from '../machine.ts';
import { romFile } from '../rom.ts';
import { runScript } from '../shots.ts';
const out = process.argv[2];
if (out) mkdirSync(out, { recursive: true });
const m = new Machine(romFile());
const shot = (name: string) => { if (out) writeFileSync(`${out}/${name}.png`, encodePng(m.ppu.snapshot().pixels, WIDTH, HEIGHT)); };
runScript(m, 'wait 1000, start 4, wait 200');
function trial(line: string) {
  runScript(m, 'down 4, wait 30');
  const shots = [m.ram.slice()];
  for (let k = 0; k < 4; k++) { runScript(m, 'a 4, wait 30'); shots.push(m.ram.slice()); shot(`${line}-${k}`); }
  const flip = [];
  for (let i = 0; i < 0x800; i++) {
    const [x, y] = [shots[0][i], shots[1][i]];
    if (x !== y && shots.every((r, k) => r[i] === (k % 2 ? y : x))) flip.push(`$${i.toString(16).padStart(4, '0')} ${x.toString(16)}→${y.toString(16)}`);
  }
  console.log(line, flip.join(', ') || '(none)');
}
trial('music');
trial('effects');

// Mid-level: the same 1500 frames of level 1 (A pressed now and then, to make shots' sound) with
// $07A5 held at 0, 2 and 4 — the sound chip's writes per run, and whether the rest of the RAM (the
// game, not its sound) went the same way.
import { cardState } from '../teleport.ts';
import { BUTTON } from '../machine.ts';
const runs: Record<number, { writes: number; ram: Uint8Array[] }> = {};
for (const flags of [0, 2, 4]) {
  const { m } = cardState(0);
  let writes = 0;
  m.hooks.write = (a) => { if (a >= 0x4000 && a <= 0x4013) writes++; };
  const ram: Uint8Array[] = [];
  for (let f = 0; f < 1500; f++) { m.ram[0x7a5] = flags; m.frame(f % 90 < 3 ? BUTTON.A : f % 400 < 200 ? BUTTON.RIGHT : 0); if (f % 100 === 99) ram.push(m.ram.slice()); }
  runs[flags] = { writes, ram };
}
const sound = (i: number) => (i >= 0x3cb && i <= 0x3ff) || (i >= 0x7a5 && i <= 0x7ff) || i < 0x10;
for (const flags of [2, 4]) {
  let differ = 0;
  runs[flags].ram.forEach((r, k) => { for (let i = 0; i < 0x800; i++) if (!sound(i) && r[i] !== runs[0].ram[k][i]) differ++; });
  console.log(`$07A5=${flags}: ${runs[flags].writes} chip writes (both on: ${runs[0].writes}); game cells that differ from both-on: ${differ}`);
}
for (const flags of [2, 4]) {
  const seen = new Map<number, number>();
  runs[flags].ram.forEach((r, k) => { for (let i = 0; i < 0x800; i++) if (!sound(i) && r[i] !== runs[0].ram[k][i]) seen.set(i, (seen.get(i) ?? 0) + 1); });
  const first = runs[flags].ram.findIndex((r, k) => r.some((v, i) => !sound(i) && v !== runs[0].ram[k][i]));
  console.log(`$07A5=${flags}: first differs at snapshot ${first}; cells:`, [...seen].map(([i, n]) => `${i.toString(16)}×${n}`).join(' '));
}
