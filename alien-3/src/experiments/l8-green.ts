// Level 8: the green bits at Y 488-511 (X 256-319) on the map, over empty space just below a page
// top — does the game's screen show them with the camera on that page top (Y 480)? The player
// teleported below them, the frame saved as a picture.
import { writeFileSync } from 'node:fs';
import { encodePng } from '../../libs/nes/src/png.ts';
import { HEIGHT, WIDTH } from '../../libs/nes/src/ppu.ts';
import { Level } from '../level.ts';
import { cardState, teleportOnBuild } from '../teleport.ts';
import { cheats, pos } from '../paths.ts';
const { m } = cardState(7);
teleportOnBuild(m, new Level(m.cart.prg, 7), 160, 480, 288, 560);
m.nes.beforeVblank = () => cheats(m, true);
m.frames(1180 - 900 + 30);
console.log(`camera ${m.ram[0x1a] | (m.ram[0x1b] << 8)}, ${m.ram[0x1c] | (m.ram[0x1d] << 8)}; player ${pos(m)}`);
writeFileSync(process.argv[2], encodePng(m.ppu.snapshot().pixels, WIDTH, HEIGHT));
