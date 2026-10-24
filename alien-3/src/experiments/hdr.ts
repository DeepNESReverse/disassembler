import { readHeader } from '../level.ts';
import { loadCart } from '../render.ts';
const prg = loadCart().prg;
for (let n = 0; n < 12; n++) {
  const h = readHeader(prg, n);
  const predicted = h.layout + (Math.floor(h.cameraY / 240) * 8 + Math.floor((h.cameraY % 240) / 32)) * 64 + Math.floor(h.cameraX / 32);
  console.log(n, 'cam', h.cameraX, h.cameraY, 'mod', h.cameraX % 512, h.cameraY % 240, '$18', h.startByte.toString(16), 'predicted', predicted.toString(16), 'layout', h.layout.toString(16), 'chr', h.chr.toString(16), 'pal', h.palette.toString(16));
}
