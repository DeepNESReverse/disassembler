// A door (level 1, X ≈ 447-480, Y ≈ 560): the player put right of it (no-clip, then let go), then
// (a) walks left, (b) fires (A) facing left and walks left. X every 10 frames.
import { BUTTON, loadState, saveState } from '../machine.ts';
import { cardState } from '../teleport.ts';
import { lead, noclip, route } from '../noclip.ts';
const [x0, y0] = (process.argv[2] ?? '520,556').split(',').map(Number);
const { m } = cardState(0);
let cur: [number, number] | null = null, on = true;
const put = noclip(m, () => cur);
m.nes.beforeVblank = () => { if (on) put(); m.ram[0x3c8] = 0x64; m.ram[0x74a] = 0x18; };
m.frames(1180 - 900);
const r = m.ram;
const camera = () => [((r[0x1a] | (r[0x1b] << 8)) << 16) >> 16, ((r[0x1c] | (r[0x1d] << 8)) << 16) >> 16] as [number, number];
for (const wp of route(camera(), [Math.max(0, x0 - 128), Math.floor(y0 / 240) * 240]))
  for (let f = 0; f < 3000; f++) { cur = lead(m, wp); m.frame(0); const [cx, cy] = camera(); if (Math.abs(cx - wp[0]) <= 2 && Math.abs(cy - wp[1]) <= 2) break; }
for (let f = 0; f < 30; f++) { cur = [x0, y0]; m.frame(0); }
on = false;
for (let f = 0; f < 60; f++) m.frame(0);
const s = saveState(m);
const p = () => `${r[0x420] | (r[0x440] << 8)},${r[0x460] | (r[0x480] << 8)}`;
const runs: [string, number[]][] = [
  ['walk left', Array(150).fill(BUTTON.left)],
  ['fire left, walk', [...Array(4).fill(BUTTON.left), ...Array(60).fill(0).map((_, i) => (i % 8 < 2 ? BUTTON.A : 0)), ...Array(150).fill(BUTTON.left)]],
];
for (const [name, seq] of runs) {
  loadState(m, s);
  const out: string[] = [];
  seq.forEach((b, i) => { m.frame(b); if (i % 15 === 0) out.push(p()); });
  console.log(name.padEnd(16), out.join(' '));
}
