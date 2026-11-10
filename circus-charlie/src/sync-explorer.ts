/**
 * The TAS on nes-explorer's core (made to run in step with FCEUX, ppudead and all): the movie's pads
 * pressed from power-on, the whole RAM set beside FCEUX's after every frame. Import only.
 *
 *   node --experimental-strip-types src/sync-explorer.ts
 */
import { Core, parseRom } from '../libs/nes-explorer/src/core/core.ts';
import { romFile } from './rom.ts';
import { readMovie } from './movie.ts';

const movie = readMovie();
const core = new Core(parseRom(romFile()));
let bad = 0;
let stackOnly = 0;
for (const f of movie) {
  core.buttons = f.buttons;
  core.runFrame();
  const diff: string[] = [];
  for (let a = 0; a < 0x800; a++) if (core.ram[a] !== f.ram[a]) diff.push(`${a.toString(16).padStart(4, '0')}:${core.ram[a].toString(16)}/${f.ram[a].toString(16)}`);
  if (!diff.length) continue;
  if (diff.every((d) => d.startsWith('01'))) { stackOnly++; continue; }
  if (bad < 5) console.log(`frame ${f.frame}: ${diff.length} cells (ours/FCEUX) ${diff.slice(0, 12).join(' ')}`);
  bad++;
}
console.log(`${movie.length} frames: ${bad} differ, ${stackOnly} only on the stack page`);
