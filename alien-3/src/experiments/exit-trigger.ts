// Level 3, player driven right with no-clip: which RAM cells, constant until the exit, change as it
// triggers, and which instruction writes them first.
import { cardState } from '../teleport.ts';
const { m } = cardState(2);
m.frames(1180 - 900);
const r = m.ram;
let target = [104, 64];
m.nes.beforeVblank = () => { r[0x420] = target[0] & 255; r[0x440] = target[0] >> 8; r[0x460] = target[1]; r[0x480] = 0; };
const hist: Uint8Array[] = [];
let pc = 0;
const firstWrite = new Map<number, string>();
m.hooks.exec = (p) => { pc = p; };
m.hooks.write = (a, v) => { if (a < 0x800 && hist.length >= 195 && !firstWrite.has(a)) firstWrite.set(a, `f${hist.length} pc ${pc.toString(16)} [b${m.bankAt(pc)}] =${v.toString(16)}`); };
for (let f = 0; f < 230; f++) { target = [104 + f * 2, 64]; m.frame(0); hist.push(r.slice()); }
for (let a = 0; a < 0x800; a++) {
  if (a >= 0x100 && a < 0x200) continue;
  const before = hist.slice(100, 198).every((s) => s[a] === hist[100][a]);
  const changed = hist.slice(198, 230).some((s) => s[a] !== hist[100][a]);
  if (before && changed) console.log(`$${a.toString(16).padStart(3, '0')}: ${hist[100][a].toString(16)} → ${hist.slice(198, 230).map((s) => s[a].toString(16)).join(',')}  first write ${firstWrite.get(a)}`);
}
