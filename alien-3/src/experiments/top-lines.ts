// What the top lines of the screen show: per screen line 0-24 and 168-184, the nametable Y it is
// drawn from and PPUMASK (bits 3/4: background/sprites on), in level 8 at its start — against the
// camera's Y ($1C/$1D). Are the field's first lines the world's camera Y, and are they drawn?
import { cardState } from '../teleport.ts';
import { cheats } from '../paths.ts';
const { m } = cardState(7);
m.nes.beforeVblank = () => cheats(m, true);
m.frames(1180 - 900 + 60);
const camY = m.ram[0x1c] | (m.ram[0x1d] << 8);
console.log(`camera Y ${camY}`);
for (const l of [0, 1, 2, 4, 6, 7, 8, 9, 10, 12, 15, 16, 17, 20, 24, 168, 172, 175, 176, 180, 184])
  console.log(`line ${String(l).padStart(3)}: nametable y ${m.lineY[l]}, mask ${m.lineMask[l].toString(2).padStart(8, '0')}`);
