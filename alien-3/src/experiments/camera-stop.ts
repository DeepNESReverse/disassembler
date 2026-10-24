// Which instructions run in a frame where the camera follows vs. one where it has stopped (level 3, player driven right).
import { cardState } from '../teleport.ts';
const { m } = cardState(2);
m.frames(1180 - 900);
const r = m.ram;
let target = [104, 64];
m.nes.beforeVblank = () => { r[0x420] = target[0] & 255; r[0x440] = target[0] >> 8; r[0x460] = target[1]; r[0x480] = 0; };
const runs: Set<number>[] = [];
let cur = new Set<number>();
m.hooks.exec = (pc) => { if (pc >= 0xc000) cur.add(pc); };
for (let f = 0; f < 300; f++) {
  target = [104 + f * 2, 64];
  cur = new Set();
  m.frame(0);
  if (f === 150 || f === 280) { runs.push(cur); console.log(f, 'cam', r[0x1a] | (r[0x1b] << 8), 'player', target[0]); }
}
const [moving, stopped] = runs;
const h = (v: number) => v.toString(16).toUpperCase();
console.log('only when moving:', [...moving].filter((p) => !stopped.has(p)).sort((a, b) => a - b).map(h).join(' '));
console.log('only when stopped:', [...stopped].filter((p) => !moving.has(p)).sort((a, b) => a - b).map(h).join(' '));
