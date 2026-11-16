/**
 * A weapon in level 1 under the TAS's own pads: the run to `from`, then every frame the weapon cells
 * set (`$E9` 2, `$EA` the weapon, `$EB` 56 — STATUS §17) while the movie plays on; per frame the
 * bullets on screen (`$ED`) and a picture every 4 frames -> runs/weapon-tas-<n>.png.
 *   node --experimental-strip-types --no-warnings src/experiments/weapon-tas.ts <weapon> [from] [frames]
 */
import { writeFileSync } from 'node:fs';
import { encodePng } from '../../libs/nes/src/png.ts';
import { HEIGHT, WIDTH } from '../../libs/nes/src/ppu.ts';
import { Run } from '../run.ts';
import { shotsHurt } from '../shots-hurt.ts';

const weapon = Number(process.argv[2] ?? 0);
const from = Number(process.argv[3] ?? 1595);
const count = Number(process.argv[4] ?? 40);
const run = new Run();
// OWN=1: the movie's pads replaced from `from` on by B tapped every 12 frames, standing still.
if (process.env.OWN) for (let i = 0; i < count + 2; i++) run.pads[from + i] = i % 12 < 2 ? 2 : 0;
run.to(from);
const m = run.m;
const shots: Uint32Array[] = [];
const log: string[] = [];
// HURT=1: the shots hurt level 1's enemies (src/shots-hurt.ts); the hits are logged.
const hurt: string[] = [];
// Which steps of the attack ($9DBA, STATUS §17) run: the shot's checks and the spawn.
const MARKS: Record<number, string> = { 0x5dba: 'attack', 0x5dc5: 'punch', 0x5dfb: 'gun', 0x5e08: 'ammo ok', 0x5e11: 'spawned', 0x59f7: 'B?', 0x59fc: 'B!' };
const hits: string[] = [];
m.hooks.exec = (p) => {
  const o = m.prgOffset(p);
  if (p >= 0x8000 && MARKS[o]) hits.push(MARKS[o]);
};
if (process.env.HURT) shotsHurt(m, (x) => hurt.push(`${run.frame + 1}: slot ${x.toString(16)} hit, health ${m.ram[0x4e7 + x]}`));
// E9=n: the pose set (`$9AEE`: 0 fists, 1 and 2 two guns), 2 if not given.
const pose = Number(process.env.E9 ?? 2);
for (let i = 0; i < count; i++) {
  m.ram[0xe9] = pose;
  m.ram[0xea] = weapon;
  m.ram[0xeb] = 56;
  run.to(from + i + 1);
  log.push(`${from + i + 1}:${run.pads[from + i + 1] & 2 ? 'B' : '-'}${m.ram[0xed]}${hits.length ? `[${hits.join(',')}] E9=${m.ram[0xe9]}` : ''}`);
  hits.length = 0;
  if (i % 4 === 3 && shots.length < 10) shots.push(m.ppu.pixels.slice() as unknown as Uint32Array);
}
const W = WIDTH * 5, H = HEIGHT * 2;
const px = new Uint32Array(W * H);
shots.forEach((s, k) => {
  const ox = (k % 5) * WIDTH, oy = Math.floor(k / 5) * HEIGHT;
  for (let y = 0; y < HEIGHT; y++) for (let x = 0; x < WIDTH; x++) px[(oy + y) * W + ox + x] = s[y * WIDTH + x];
});
writeFileSync(`runs/weapon-tas-${pose}-${weapon}.png`, encodePng(px, W, H, 1));
console.log(log.join(' '));
if (process.env.HURT) console.log(hurt.join('\n') || 'no hits');
