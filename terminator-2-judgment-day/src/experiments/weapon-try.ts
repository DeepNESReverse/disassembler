/**
 * A weapon in level 1: the run to `frame` (the truck stop), then the weapon cells set (`$E9` 2 — the
 * gun on, `$EA` the weapon, `$EB` the rounds, STATUS §17) and B pressed every 12 frames for 60
 * frames, standing; a picture every 6 frames -> runs/weapon-<n>.png (a strip).
 *   node --experimental-strip-types --no-warnings src/experiments/weapon-try.ts <weapon 0-6> [frame]
 */
import { writeFileSync } from 'node:fs';
import { encodePng } from '../../libs/nes/src/png.ts';
import { HEIGHT, WIDTH } from '../../libs/nes/src/ppu.ts';
import { BUTTON } from '../machine.ts';
import { Run } from '../run.ts';

const weapon = Number(process.argv[2] ?? 0);
const frame = Number(process.argv[3] ?? 1700);
const run = new Run();
run.to(frame);
const m = run.m;
m.nes.beforeVblank = undefined;
const shots: Uint32Array[] = [];
for (let i = 0; i < 60; i++) {
  m.ram[0xe9] = 2;
  m.ram[0xea] = weapon;
  m.ram[0xeb] = 56;
  m.frame(i % 12 < 2 ? BUTTON.B : 0);
  if (i % 6 === 5) shots.push(m.ppu.pixels.slice() as unknown as Uint32Array);
  if (process.env.TRACE) console.log(i, "ED", m.ram[0xed], "EB", m.ram[0xeb], "0717", m.ram[0x717].toString(16), "85", m.ram[0x85].toString(16));
}
const W = WIDTH * 5, H = HEIGHT * 2;
const px = new Uint32Array(W * H);
shots.forEach((s, k) => {
  const ox = (k % 5) * WIDTH, oy = Math.floor(k / 5) * HEIGHT;
  for (let y = 0; y < HEIGHT; y++) for (let x = 0; x < WIDTH; x++) px[(oy + y) * W + ox + x] = s[y * WIDTH + x];
});
writeFileSync(`runs/weapon-${weapon}.png`, encodePng(px, W, H, 1));
console.log(`weapon ${weapon}: bullets on screen after ($ED) ${m.ram[0xed]}, rounds $EB ${m.ram[0xeb]}`);
