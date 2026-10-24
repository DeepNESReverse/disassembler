// Does the player go where we put him each frame (at line 241, before the NMI and the game's logic)?
import { cardState } from '../teleport.ts';
const n = Number(process.argv[2] ?? 3) - 1;
const { m } = cardState(n);
m.frames(1180 - 900);
const r = m.ram;
const get = () => [r[0x420] | (r[0x440] << 8), r[0x460] | (r[0x480] << 8), r[0x1a] | (r[0x1b] << 8), r[0x1c] | (r[0x1d] << 8)];
let [x, y] = get();
console.log('start', get());
let target = [x, y];
m.nes.beforeVblank = () => {
  r[0x420] = target[0] & 255; r[0x440] = target[0] >> 8;
  r[0x460] = target[1] & 255; r[0x480] = target[1] >> 8;
};
for (let f = 0; f < 600; f++) {
  target = f < 300 ? [x + f * 2, y] : [x + 600, y + (f - 300) * 2];
  m.frame(0);
  if (f % 50 === 49) console.log(f, 'target', target, 'player/cam', get(), 'level', r[0xa8]);
}
