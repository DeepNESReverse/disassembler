import { Run } from '../run.ts';
const pts: [number, number][] = [[1144, 162], [2944, 142], [5390, 816], [5990, 392], [6590, 67], [11665, 48]];
const run = new Run();
for (const [f, y] of pts) {
  run.to(f);
  const r = run.m.ram;
  const hex = (a: number) => r[a].toString(16).padStart(2, '0');
  console.log(f, 'y', y, y.toString(16), 'zp10-1f', [...Array(16)].map((_, i) => hex(0x10 + i)).join(' '), ' 40-47', [...Array(8)].map((_, i) => hex(0x40 + i)).join(' '));
}
