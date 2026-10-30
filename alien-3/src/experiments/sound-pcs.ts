// Which code writes the sound chip: during the title's music only, then in level 1 standing still
// (its music), then firing (A) — the PCs (with the bank) that write $4000-$4013/$4015 in each.
import { BUTTON } from '../machine.ts';
import { Machine } from '../machine.ts';
import { romFile } from '../rom.ts';
import { cardState } from '../teleport.ts';
const tally = (m: Machine, run: () => void) => {
  const pcs = new Map<string, number>();
  let pc = 0;
  m.hooks.exec = (p) => { pc = p; };
  m.hooks.write = (a) => { if (a >= 0x4000 && a <= 0x4015 && a !== 0x4014) { const k = `${m.bankAt(pc)}:${pc.toString(16)}`; pcs.set(k, (pcs.get(k) ?? 0) + 1); } };
  run();
  m.hooks.exec = undefined; m.hooks.write = undefined;
  return pcs;
};
const t = new Machine(romFile());
const title = tally(t, () => t.frames(700));
const { m } = cardState(0);
m.frames(1200 - 900);
const still = tally(m, () => m.frames(600));
const fire = tally(m, () => { for (let f = 0; f < 600; f++) m.frame(f % 8 < 2 ? BUTTON.A : 0); });
const show = (p: Map<string, number>) => [...p].sort().map(([k, n]) => `${k}×${n}`).join(' ');
console.log('title:', show(title));
console.log('level, still:', show(still));
console.log('level, firing:', show(fire));
console.log('only when firing:', [...fire.keys()].filter((k) => !still.has(k)).join(' '));
