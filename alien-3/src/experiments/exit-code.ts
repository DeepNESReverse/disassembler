// Level 3, no-clip right: instructions run for the first time after frame 150, by frame.
import { cardState } from '../teleport.ts';
const { m } = cardState(2);
m.frames(1180 - 900);
const r = m.ram;
let target = [104, 64], f = 0;
m.nes.beforeVblank = () => { r[0x420] = target[0] & 255; r[0x440] = target[0] >> 8; r[0x460] = target[1]; r[0x480] = 0; };
const seen = new Set<number>();
const fresh = new Map<number, number[]>();
m.hooks.exec = (pc) => {
  const k = m.prgOffset(pc >= 0x8000 ? pc : 0x8000) * 0 + (pc >= 0x8000 ? m.prgOffset(pc) : pc);
  if (seen.has(k)) return;
  seen.add(k);
  if (f > 150) { if (!fresh.has(f)) fresh.set(f, []); fresh.get(f)!.push(pc); }
};
for (f = 0; f < 222; f++) { target = [104 + f * 2, 64]; m.frame(0); }
for (const [fr, pcs] of fresh) console.log(fr, `x=${104 + fr * 2}`, pcs.slice(0, 40).map((p) => p.toString(16)).join(' '), pcs.length > 40 ? `… ${pcs.length}` : '');
