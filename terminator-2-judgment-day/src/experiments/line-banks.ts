// The CHR banks of each line of a frame, run by run (the scanline IRQ switches them mid-frame).
//   node --experimental-strip-types --no-warnings src/experiments/line-banks.ts
import { Run } from '../run.ts';
const run = new Run();
const m = run.m;
const ppu = m.ppu as unknown as { scanline(l: number): void; ctrl: number };
const rows: string[] = [];
let want = 0;
const scanline = ppu.scanline.bind(ppu);
ppu.scanline = (l) => {
  scanline(l);
  if (want && l < 240) {
    const s = [0, 1, 2, 3, 4, 5, 6, 7].map((i) => (m.nes.mapper.chrAt!(i * 0x400) >> 10).toString(16)).join(',') + ' ctrl ' + ppu.ctrl.toString(16) + ' x ' + m.lineX[l] + ' dy ' + (m.lineY[l] - l);
    if (rows.length === 0 || !rows[rows.length - 1].endsWith(s)) rows.push(`${l}: ${s}`);
  }
};
for (const f of [1700, 7200, 9600, 13000, 13300, 13480, 19000, 19800, 35500]) {
  run.to(f - 1); want = 1; rows.length = 0; run.to(f); want = 0;
  console.log(`f${f}  ` + rows.join(' | '));
}
