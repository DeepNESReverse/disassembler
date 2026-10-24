/**
 * A level drawn whole from its data: out/levels/<nn>.png.
 *   node --experimental-strip-types src/render.ts [level …]
 * Background CHR: 1 KB banks header $26 .. $26 + 3 at PPU $0000 (B15:$ECCF writes R0 = $26,
 * R1 = $26 + 2; PPUCTRL bit 4 is clear in play). Colours: the header's palette ($24).
 */
import { mkdirSync, readFileSync, writeFileSync } from 'node:fs';
import { encodePng } from '../../xrom-libs/nes/src/png.ts';
import { NES_RGB } from '../../xrom-libs/nes/src/palette.ts';
import { parseRom } from '../../xrom-libs/nes/src/nes.ts';
import { Level, LEVELS } from './level.ts';
import { ROM_PATH } from './machine.ts';

export function loadCart() {
  return parseRom(new Uint8Array(readFileSync(ROM_PATH)));
}

/** RGB pixels of the whole level, `palette` the 32 colours (default: the header's). */
export function renderLevel(level: Level, chr: Uint8Array, palette = level.palette()): { pixels: Uint32Array; width: number; height: number } {
  const W = level.widthTiles * 8, H = level.heightTiles * 8;
  const pixels = new Uint32Array(W * H);
  const base = level.header.chr * 0x400;
  for (let ty = 0; ty < level.heightTiles; ty++)
    for (let tx = 0; tx < level.widthTiles; tx++) {
      const { tile, palette: p } = level.tile(tx, ty);
      for (let y = 0; y < 8; y++) {
        const lo = chr[base + tile * 16 + y], hi = chr[base + tile * 16 + y + 8];
        for (let x = 0; x < 8; x++) {
          const c = ((lo >> (7 - x)) & 1) | (((hi >> (7 - x)) & 1) << 1);
          pixels[(ty * 8 + y) * W + tx * 8 + x] = NES_RGB[palette[c ? p * 4 + c : 0] & 0x3f];
        }
      }
    }
  return { pixels, width: W, height: H };
}

if (import.meta.url === `file://${process.argv[1]}`) {
  const cart = loadCart();
  const which = process.argv.slice(2).map(Number);
  mkdirSync('out/levels', { recursive: true });
  for (const n of which.length ? which : [...Array(LEVELS).keys()]) {
    const level = new Level(cart.prg, n);
    const { pixels, width, height } = renderLevel(level, cart.chr);
    writeFileSync(`out/levels/${String(n + 1).padStart(2, '0')}.png`, encodePng(pixels, width, height));
    console.log(`level ${n + 1} ($A8=${n}): ${width} × ${height}`);
  }
}
