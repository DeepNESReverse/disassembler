// A shot's sound in level 1: the sound driver's per-channel cells ($03CB-$03FF, $07A9-$07FF) a few
// frames before one press of A and the 40 after — which turn on for the shot and back after it?
import { BUTTON } from '../machine.ts';
import { cardState } from '../teleport.ts';
const { m } = cardState(0);
m.frames(1300 - 900);
const cells = [...Array.from({ length: 0x35 }, (_, i) => 0x3cb + i), ...Array.from({ length: 0x57 }, (_, i) => 0x7a9 + i)];
const rows: number[][] = [];
for (let f = 0; f < 50; f++) { m.frame(f >= 5 && f < 7 ? BUTTON.A : 0); rows.push(cells.map((a) => m.ram[a])); }
cells.forEach((a, i) => {
  const col = rows.map((r) => r[i]);
  const before = col.slice(0, 5), during = col.slice(6, 30);
  if (before.every((v) => v === before[0]) && during.some((v) => v !== before[0]))
    console.log(`$${a.toString(16)}: ${col.map((v) => v.toString(16).padStart(2, '0')).join(' ')}`);
});
