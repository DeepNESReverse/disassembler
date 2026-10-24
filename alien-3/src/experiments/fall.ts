// A long fall: level 1, the player put (no-clip) on the upper platform's right end near X 372 and
// let go, then walks right off it; X/Y, the state cells $DE/$E6 and health, every 10 frames.
import { BUTTON } from '../machine.ts';
import { cardState } from '../teleport.ts';
import { lead, noclip, route } from '../noclip.ts';
const [x0, y0] = (process.argv[2] ?? '372,560').split(',').map(Number);
const { m } = cardState(0);
let cur: [number, number] | null = null, on = true;
const put = noclip(m, () => cur);
m.nes.beforeVblank = () => { if (on) put(); m.ram[0x3c8] = 0x64; };
m.frames(1180 - 900);
const r = m.ram;
const camera = () => [((r[0x1a] | (r[0x1b] << 8)) << 16) >> 16, ((r[0x1c] | (r[0x1d] << 8)) << 16) >> 16] as [number, number];
for (const wp of route(camera(), [Math.max(0, x0 - 128), Math.floor(y0 / 240) * 240]))
  for (let f = 0; f < 3000; f++) { cur = lead(m, wp); m.frame(0); const [cx, cy] = camera(); if (Math.abs(cx - wp[0]) <= 2 && Math.abs(cy - wp[1]) <= 2) break; }
for (let f = 0; f < 30; f++) { cur = [x0, y0]; m.frame(0); }
on = false;
const p = () => `${r[0x420] | (r[0x440] << 8)},${r[0x460] | (r[0x480] << 8)} DE=${r[0xde]} E6=${r[0xe6]} hp=${r[0x74a]}`;
for (let f = 0; f < 60; f++) m.frame(0);
console.log('landed:', p());
for (let f = 0; f < 400; f++) { m.frame(f < 40 ? BUTTON.right : 0); if (f % 10 === 0) console.log(f, p()); }
