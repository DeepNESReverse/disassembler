// The bit in the camera's top-left corner of the map player (and the xrom preview): a sprite the
// take's sprite page has near X 0 / Y 0 — does the game's frame show it? PPUMASK bits 1-2 (show
// the background / sprites in the leftmost 8 pixels) as the game sets them during play, and the
// sprites sitting in that corner, a few seconds into level 1.
import { cardState } from '../teleport.ts';
import { cheats, pos } from '../paths.ts';
const { m } = cardState(0);
m.nes.beforeVblank = () => cheats(m, true);
for (const wait of [300, 120, 120]) {
  m.frames(wait);
  const corner = [];
  for (let k = 0; k < 64; k++) {
    const y = m.ram[0x200 + k * 4], x = m.ram[0x203 + k * 4];
    if (y < 0xef && x < 8 && y < 16) corner.push(`#${k} x ${x} y ${y} tile $${m.ram[0x201 + k * 4].toString(16)} attr $${m.ram[0x202 + k * 4].toString(16)}`);
  }
  console.log(`player ${pos(m)}: PPUMASK $${m.ppu.mask.toString(16)} (left 8 px: bg ${m.ppu.mask & 2 ? 'shown' : 'hidden'}, sprites ${m.ppu.mask & 4 ? 'shown' : 'hidden'}); corner sprites: ${corner.join('; ') || 'none'}`);
}
