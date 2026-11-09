// Level 8: the roofs under the page seam (Y 720) — does the game's frame with the camera on that
// page top start at map row 720 or above it? The player teleported into the room below, the frame
// saved as a picture to compare with out/levels/08.png line by line.
import { writeFileSync } from 'node:fs';
import { encodePng } from '../../libs/nes/src/png.ts';
import { HEIGHT, WIDTH } from '../../libs/nes/src/ppu.ts';
import { Level } from '../level.ts';
import { cardState, teleportOnBuild } from '../teleport.ts';
import { cheats, pos } from '../paths.ts';
const { m } = cardState(7);
teleportOnBuild(m, new Level(m.cart.prg, 7), 400, 720, 520, 800);
m.nes.beforeVblank = () => cheats(m, true);
m.frames(1180 - 900 + 30);
console.log(`camera ${m.ram[0x1a] | (m.ram[0x1b] << 8)}, ${m.ram[0x1c] | (m.ram[0x1d] << 8)}; player ${pos(m)}`);
writeFileSync(process.argv[2], encodePng(m.ppu.snapshot().pixels, WIDTH, HEIGHT));
