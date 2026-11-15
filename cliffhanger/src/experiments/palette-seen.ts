import { Run } from '../run.ts';
import { section } from '../level.ts';
import { STARTS } from '../render.ts';
const run = new Run();
const h = (a: ArrayLike<number>) => [...a].slice(0, 16).map((v) => v.toString(16).padStart(2, '0')).join(' ');
for (const s of [5, 8, 9, 10, 13, 14]) {
  const seen = new Map<string, number>();
  for (let f = STARTS[s] + 30; f < (STARTS[s + 1] ?? 24800) - 120; f += 4) {
    run.to(f);
    const k = h(run.m.ppu.palette);
    seen.set(k, (seen.get(k) ?? 0) + 1);
  }
  console.log(`section ${s} rom  ${h(section(s).palette)}`);
  for (const [k, n] of [...seen].sort((a, b) => b[1] - a[1]).slice(0, 5)) console.log(`          ×${n}  ${k}`);
}
