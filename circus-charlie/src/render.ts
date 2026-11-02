/**
 * The stage maps drawn: out/stages/stageN.png from capture.ts' cells, from line 44 (the field's
 * top: plane y 44, 4 lines into row 5) down, the CHR ROM's background
 * pattern table the field was drawn with and the stage palette (PRG $0CE8, written at each stage
 * card by $C4B1). `--marks`: also stageN-marks.png, the cells that differ from the arena tinted red,
 * those shown more than one way blue.
 *
 *   node --experimental-strip-types src/render.ts [--marks]
 */
import { readFileSync, writeFileSync, readdirSync } from 'node:fs';
import { encodePng } from '../../xrom-libs/nes/src/png.ts';
import { NES_RGB } from '../../xrom-libs/nes/src/palette.ts';
import { parseRom } from '../../nes-explorer/src/core/core.ts';
import { romFile } from './rom.ts';
import { cpuByte } from './level.ts';
import { FIELD_TOP } from './replay.ts';

const rom = parseRom(romFile());
const palette = Array.from({ length: 16 }, (_, i) => cpuByte(rom.prg, 0xcce8 + i) & 0x3f);
const marks = process.argv.includes('--marks');

for (const file of readdirSync('out/stages').filter((f) => /^stage\d\.json$/.test(f))) {
  const m = JSON.parse(readFileSync(`out/stages/${file}`, 'utf8'));
  const bg = Number(Object.entries(m.bgTables as Record<string, number>).sort((a, b) => b[1] - a[1])[0][0]);
  const W = m.width * 8;
  // The cells start at plane y 8·firstRow; the field at FIELD_TOP.
  const skip = FIELD_TOP - m.firstRow * 8;
  const H = m.rows * 8 - skip;
  const px = new Int32Array(W * H);
  const mk = marks ? new Int32Array(W * H) : undefined;
  for (let r = 0; r < m.rows; r++)
    for (let c = 0; c < m.width; c++) {
      const i = r * m.width + c;
      const tile = m.tiles[i];
      for (let y = 0; y < 8; y++)
        for (let x = 0; x < 8; x++) {
          if (r * 8 + y < skip) continue;
          const o = (r * 8 + y - skip) * W + c * 8 + x;
          if (tile < 0) {
            px[o] = 0x202020;
            if (mk) mk[o] = 0x202020;
            continue;
          }
          const a = bg + tile * 16 + y;
          const b = 7 - x;
          const ci = ((rom.chr[a] >> b) & 1) | (((rom.chr[a + 8] >> b) & 1) << 1);
          const rgb = NES_RGB[ci ? palette[m.pals[i] * 4 + ci] : palette[0]];
          px[o] = rgb;
          if (mk) {
            const f = m.flags[i];
            const tint = f & 1 ? 0x3060ff : f & 2 ? 0xff3030 : -1;
            mk[o] = tint < 0 ? rgb : (((((rgb >> 16) & 255) + ((tint >> 16) & 255)) >> 1) << 16) | (((((rgb >> 8) & 255) + ((tint >> 8) & 255)) >> 1) << 8) | (((rgb & 255) + (tint & 255)) >> 1);
          }
        }
    }
  const name = file.replace('.json', '');
  writeFileSync(`out/stages/${name}.png`, encodePng(px, W, H));
  if (mk) writeFileSync(`out/stages/${name}-marks.png`, encodePng(mk, W, H));
  console.log(`${name}: ${W}×${H}, background tiles from $${bg.toString(16)}`);
}
