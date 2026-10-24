import { atLevel } from '../level-poke.ts';
import { BUTTON } from '../machine.ts';
import { Level } from '../level.ts';
import { Checker } from '../check.ts';
const m = atLevel(0, 1185);
const c = new Checker(m, new Level(m.cart.prg, 0));
m.nes.beforeVblank = () => c.frame(true);
const px = () => m.ram[0x420] | (m.ram[0x440] << 8);
while (px() < 860) m.frame(BUTTON.right);
let last = 0;
for (let i = 0; i < 1500; i++) {
  m.frame(i < 300 ? BUTTON.down : (i >> 7) & 1 ? BUTTON.right : BUTTON.left | BUTTON.down);
  if (i % 100 === 0) {
    const r = m.ram; const s = c.summary();
    console.log(`i${i} cam ${r[0x1a] | r[0x1b] << 8},${r[0x1c] | r[0x1d] << 8} $2B ${r[0x2b]} lineY0 ${m.lineY[0]} matched ${s.matched - last}/${s.samples}`); last = s.matched;
  }
}
console.log(c.summary());
