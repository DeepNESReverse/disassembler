/**
 * The user: in front of the green-and-red panel, Up opens the door. Level 1, the player put at the
 * panel (no-clip, then let go, 60 frames standing): Up 10 frames, 90 frames still, then walk left
 * 150 frames. RAM cells that changed by the Up and stayed changed; X while walking.
 */
import { writeFileSync } from 'node:fs';
import { encodePng } from '../../../xrom-libs/nes/src/png.ts';
import { BUTTON, loadState, saveState } from '../machine.ts';
import { cardState } from '../teleport.ts';
import { lead, noclip, route } from '../noclip.ts';
const [x0, y0] = (process.argv[2] ?? '520,552').split(',').map(Number);
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
console.log('standing at', p(), 'DE', r[0xde], 'camera', camera());
writeFileSync('runs/door-stand.png', encodePng(m.ppu.snapshot().pixels, 256, 240));
for (const up of [false, true]) {
  loadState(m, s);
  const before = r.slice();
  for (let f = 0; f < 10; f++) m.frame(up ? BUTTON.up : 0);
  const mid = r.slice();
  for (let f = 0; f < 90; f++) m.frame(0);
  const after = r.slice();
  if (up) writeFileSync('runs/door-after-up.png', encodePng(m.ppu.snapshot().pixels, 256, 240));
  const afterUp = saveState(m);
  for (const [dir, b] of [['left', BUTTON.left], ['right', BUTTON.right]] as const) {
    loadState(m, afterUp);
    const out: string[] = [];
    for (let f = 0; f < 150; f++) { m.frame(b); if (f % 15 === 0) out.push(p()); }
    console.log(`${up ? 'Up, then' : 'no Up,  '} ${dir}:`.padEnd(18), out.join(' '));
  }
  if (up) {
    const kept: string[] = [];
    for (let a = 0; a < 0x800; a++) if (a < 0x100 || a >= 0x200) if (mid[a] !== before[a] && after[a] === mid[a]) kept.push(`$${a.toString(16)}:${before[a].toString(16)}→${after[a].toString(16)}`);
    console.log('changed by Up and kept:', kept.join(' '));
  }
}
// The door cells over time after the Up: are they timers (the door closing again)?
loadState(m, s);
for (let f = 0; f < 10; f++) m.frame(BUTTON.up);
const row = () => Array.from({ length: 16 }, (_, k) => r[0x3e0 + k].toString(16).padStart(2, '0')).join(' ');
for (let f = 0; f <= 1800; f++) { if (f % 300 === 0) console.log(`+${f} frames: $03E0-$03EF ${row()}`); m.frame(0); }
// Is a door drawn in the background? The nametables before the Up and 90 frames after it (the
// player standing still), cells that changed; and how many sprites are on screen before / after.
{
  loadState(m, s);
  const ntBefore = m.ppu.snapshot().nametables.slice();
  const oamVisible = () => { let k = 0; for (let i = 0; i < 64; i++) if (r[0x200 + i * 4] < 0xef) k++; return k; };
  const before = oamVisible();
  for (let f = 0; f < 10; f++) m.frame(BUTTON.up);
  for (let f = 0; f < 90; f++) m.frame(0);
  const ntAfter = m.ppu.snapshot().nametables;
  let changed = 0;
  for (let i = 0; i < ntAfter.length; i++) if (ntAfter[i] !== ntBefore[i]) changed++;
  console.log(`door: nametable bytes changed by opening ${changed}; sprites on screen ${before} → ${oamVisible()}`);
}
