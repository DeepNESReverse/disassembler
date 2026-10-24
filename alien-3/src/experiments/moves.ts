// How the player moves (level 1, from the start, untouchable): X/Y frame by frame for a few inputs.
import { BUTTON } from '../machine.ts';
import { cardState, loadState } from '../teleport.ts';
import { saveState } from '../machine.ts';
const { m } = cardState(0);
m.nes.beforeVblank = () => { m.ram[0x3c8] = 0x64; m.ram[0x74a] = 0x18; };
m.frames(1200 - 900);
const s0 = saveState(m);
const pos = () => `${m.ram[0x420] | (m.ram[0x440] << 8)},${m.ram[0x460] | (m.ram[0x480] << 8)}`;
const tests: [string, number[]][] = [
  ['right 40', Array(40).fill(BUTTON.right)],
  ['A', [...Array(4).fill(BUTTON.A), ...Array(50).fill(0)]],
  ['A+right', Array(50).fill(BUTTON.A | BUTTON.right)],
  ['A then right', [...Array(4).fill(BUTTON.A), ...Array(50).fill(BUTTON.right)]],
  ['down 20', Array(20).fill(BUTTON.down)],
  ['B', [...Array(4).fill(BUTTON.B), ...Array(50).fill(0)]],
  ['B+right', Array(50).fill(BUTTON.B | BUTTON.right)],
  ['up 20', Array(20).fill(BUTTON.up)],
  ['select', [...Array(4).fill(BUTTON.select), ...Array(30).fill(0)]],
  ['up+right', Array(40).fill(BUTTON.up | BUTTON.right)],
  ['down+B', [...Array(30).fill(BUTTON.down | BUTTON.B), ...Array(30).fill(0)]],
  ['down then B', [...Array(10).fill(BUTTON.down), ...Array(20).fill(BUTTON.down | BUTTON.B), ...Array(30).fill(0)]],
  ['down+right', Array(40).fill(BUTTON.down | BUTTON.right)],
];
for (const [name, seq] of tests) {
  loadState(m, s0);
  const out: string[] = [];
  seq.forEach((b, i) => { m.frame(b); if (i % 4 === 3) out.push(pos()); });
  console.log(name.padEnd(14), out.join(' '));
}
