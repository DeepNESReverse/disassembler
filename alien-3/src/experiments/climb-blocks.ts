// Blocks whose attribute byte is $FF (the climb handler's test, B14:$C306/$C333) and blocks in the
// header's $0E list (B14:$C29F/$C2CA), drawn over level 1: runs/climb1.png.
import { writeFileSync } from 'node:fs';
import { encodePng } from '../../../xrom-libs/nes/src/png.ts';
import { Level, PAGE_TILES } from '../level.ts';
import { loadCart, renderLevel } from '../render.ts';
const n = Number(process.argv[2] ?? 1) - 1;
const cart = loadCart();
const lv = new Level(cart.prg, n);
const h = lv.header;
const b = (a: number) => cart.prg[h.blocksBank * 0x2000 + (a & 0x1fff)];
const zp = (c: number) => h.bytes[c - 4 + 12] | (h.bytes[c - 4 + 13] << 8);
const list0E: number[] = [];
for (let a = zp(0x0e); b(a) !== 0xff && list0E.length < 64; a++) list0E.push(b(a));
console.log('$0E list:', list0E.join(' '));
const { pixels, width, height } = renderLevel(lv, cart.chr);
let ff = 0;
for (let ty = 0; ty < lv.heightTiles; ty += 4 - 0) {
  for (let tx = 0; tx < lv.widthTiles; tx += 4) {
    const r = ty % PAGE_TILES; if (r % 4) continue;
    const id = lv.blockAt(tx, ty);
    const isFF = b(h.attributes + id) === 0xff, inList = list0E.includes(id);
    if (!isFF && !inList) continue;
    if (isFF) ff++;
    const col = isFF && inList ? 0xffffff : isFF ? 0x00ff00 : 0xffff00;
    for (let y = 0; y < 32; y++) for (let x = 0; x < 32; x++) if (x < 2 || y < 2 || x > 29 || y > 29) {
      const yy = ty * 8 + y; if (yy < height) pixels[yy * width + tx * 8 + x] = col;
    }
  }
}
console.log('blocks with attribute $FF on the map:', ff);
writeFileSync('runs/climb1.png', encodePng(pixels, width, height));
