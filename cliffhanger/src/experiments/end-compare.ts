import { Run } from '../run.ts';
import { readCapture } from '../capture.ts';
const cap = new Map<number, Uint8Array>();
for (const c of readCapture()) if (c.frame >= 24890) cap.set(c.frame, c.ram.slice());
const run = new Run();
const cells = [0x40a, 0x404, 0x1c, 0x1d, 0x1e, 0x30, 0x31, 0x18, 0x19, 0x1a, 0x1b, 0x616, 0x617, 0x61d, 0x61e];
const h = (r: Uint8Array) => cells.map((a) => r[a].toString(16).padStart(2, '0')).join(' ');
for (let f = 24895; f <= 24948; f += 1) {
  run.to(f);
  const c = cap.get(f)!;
  let n = 0; for (let a = 0x10; a < 0x800; a++) if ((a < 0x100 || a >= 0x200) && run.m.ram[a] !== c[a]) n++;
  if (f < 24918 || f % 6 === 0) console.log(f, 'ours', h(run.m.ram), '| fceux', h(c), n ? `(${n} differ)` : '');
}
