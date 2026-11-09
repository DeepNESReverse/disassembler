/**
 * The whole cave drawn from the cartridge: out/cave.png (448 × 2400) — the map, metatiles and
 * attributes of `level.ts`, the background pattern table and palette the game plays with (read off
 * the run at frame `--frame`, default 100: the first cave's colours), and the things that change in
 * the state RAM ($07C0-) holds at that frame.
 *
 *   node --experimental-strip-types src/render.ts [--frame F] [--out out/cave.png]
 */
import { writeFileSync, mkdirSync } from 'node:fs';
import { encodePng } from '../libs/nes/src/png.ts';
import { NES_RGB } from '../libs/nes/src/palette.ts';
import { Core, parseRom } from '../libs/nes-explorer/src/core/core.ts';
import { romFile } from './rom.ts';
import { readMovie } from './movie.ts';
import { decode, TILE_COLS, TILE_ROWS } from './level.ts';

const arg = (k: string, d: string) => (process.argv.includes(k) ? process.argv[process.argv.indexOf(k) + 1] : d);
const frame = Number(arg('--frame', '100'));
const out = arg('--out', 'out/cave.png');
const rom = parseRom(romFile());
const core = new Core(rom);
(core as unknown as { port2: boolean }).port2 = true;
for (const f of readMovie()) {
  if (f.frame > frame) break;
  core.buttons = f.buttons;
  core.buttons2 = f.buttons2;
  core.runFrame();
}
const bgBase = core.ctrl & 0x10 ? 0x1000 : 0;
const { tiles, pals } = decode({ prg: rom.prg, chr: rom.chr }, core.ram);
const W = TILE_COLS * 8, H = TILE_ROWS * 8;
const px = new Int32Array(W * H);
for (let ty = 0; ty < TILE_ROWS; ty++)
  for (let tx = 0; tx < TILE_COLS; tx++) {
    const base = bgBase + tiles[ty][tx] * 16;
    for (let y = 0; y < 8; y++)
      for (let x = 0; x < 8; x++) {
        const b = 7 - x;
        const v = ((rom.chr[base + y] >> b) & 1) | (((rom.chr[base + y + 8] >> b) & 1) << 1);
        const color = v ? core.palette[pals[ty][tx] * 4 + v] : core.palette[0];
        px[(ty * 8 + y) * W + tx * 8 + x] = NES_RGB[color & 0x3f];
      }
  }
mkdirSync('out', { recursive: true });
writeFileSync(out, encodePng(px, W, H));
console.log(`${out}: ${W} × ${H}, background table $${bgBase.toString(16)}, frame ${frame}`);
