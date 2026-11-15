import { Run } from '../run.ts';
const run = new Run();
const nes = run.m.nes as unknown as { oam: Uint8Array };
for (const f of [1300, 2000, 5600, 6000, 12500]) {
  run.to(f);
  const r = run.m.ram;
  let px = ((r[0x617] << 8) | r[0x616]) / 32;
  const py = ((r[0x61e] << 8) | r[0x61d]) / 32;
  const cx = ((r[0x19] << 8) | r[0x18]) - 8, cy = (r[0x1b] << 8) | r[0x1a];
  while (px < cx + 128 - 1024) px += 2048;
  const sx = px - cx, sy = py - cy;
  const spr: string[] = [];
  for (let k = 0; k < 64; k++) { const y = nes.oam[k * 4], x = nes.oam[k * 4 + 3]; if (y < 240 && Math.abs(x - sx) < 40 && Math.abs(y - sy) < 60) spr.push(`${x},${y}`); }
  const xs = spr.map((s) => +s.split(',')[0]), ys = spr.map((s) => +s.split(',')[1]);
  console.log(f, 'player on screen', sx.toFixed(0), sy.toFixed(0), ' sprites x', Math.min(...xs), '-', Math.max(...xs) + 8, ' y', Math.min(...ys) + 1, '-', Math.max(...ys) + 17);
}
