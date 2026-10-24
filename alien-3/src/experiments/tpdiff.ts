import { cardState, teleportOnBuild, loadState } from '../teleport.ts';
import { Level } from '../level.ts';
const { m, state } = cardState(0);
const lv = new Level(m.cart.prg, 0);
const snap = () => { m.frames(1160 - 900); return m.ram.slice(); };
const a = snap();
loadState(m, state);
// The real start of level 1: camera (512, 0) from the header, the player (612, 80) from its object table.
teleportOnBuild(m, lv, 512, 0, 612, 80);
const b = snap();
const h = (n: number) => n.toString(16).padStart(2, '0');
const d: string[] = [];
for (let i = 0; i < 0x800; i++) if (a[i] !== b[i] && !(i >= 0x100 && i < 0x200)) d.push(`$${i.toString(16).padStart(3, '0')}:${h(a[i])}/${h(b[i])}`);
console.log(d.length, d.join(' '));
