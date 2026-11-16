/**
 * Every area drawn whole from the cartridge (level.ts) -> out/levels/<header>.png, with the
 * background CHR banks the game drew each tile with in the run (tile-banks.ts; the scanline IRQ
 * switches them partway down in the steel mill and the elevator) — where the run never showed a tile,
 * the banks the PPU reads on line 100 — and the palette, both at a frame of the TAS inside the area
 * (`LOOK`).
 *   node --experimental-strip-types --no-warnings src/render.ts [header …]
 */
import { mkdirSync, writeFileSync } from 'node:fs';
import { encodePng } from '../libs/nes/src/png.ts';
import { NES_RGB } from '../libs/nes/src/palette.ts';
import { Run } from './run.ts';
import { HEADERS, NAMES, area, tileAt } from './level.ts';
import { tileBanks } from './tile-banks.ts';

/** A movie frame inside each header's area, in play (src/experiments/header-loads.ts). */
export const LOOK = [35500, 13200, 12950, 13500, 18800, 1700, 9500, 19700, 7000];

export interface Look {
  /** The CHR ROM offset of each of the background's 1 KB slots. */
  slots: number[];
  palette: Uint8Array;
}

/** The background's banks and palette at movie frame `f` (a Run that is not past it yet). */
export function lookAt(run: Run, f: number, line = 100): Look {
  const m = run.m;
  const ppu = m.ppu as unknown as { scanline(l: number): void; ctrl: number };
  let slots: number[] = [];
  const scanline = ppu.scanline.bind(ppu);
  ppu.scanline = (l) => {
    scanline(l);
    if (l === line) {
      const base = ppu.ctrl & 0x10 ? 0x1000 : 0;
      slots = [0, 1, 2, 3].map((i) => m.nes.mapper.chrAt!(base + i * 0x400));
    }
  };
  run.to(f);
  ppu.scanline = scanline;
  return { slots, palette: m.ppu.palette.slice() };
}

/**
 * `banks`: per tile (tile row × tile columns) the 1 KB CHR bank the game drew it with (tile-banks.ts),
 * -1 where the run never showed it — those take `look`'s.
 */
export function drawArea(header: number, look: Look, chr: Uint8Array, banks?: Int16Array) {
  const a = area(header);
  const width = a.cols * 16;
  const height = a.rows * 16;
  const pixels = new Uint32Array(width * height);
  for (let ty = 0; ty < a.rows * 2; ty++) {
    for (let tx = 0; tx < a.cols * 2; tx++) {
      const { tile, palette } = tileAt(a, tx, ty);
      const b = banks ? banks[ty * a.cols * 2 + tx] : -1;
      const at = (b >= 0 ? b * 0x400 : look.slots[tile >> 6]) + (tile & 63) * 16;
      for (let y = 0; y < 8; y++) {
        const lo = chr[at + y];
        const hi = chr[at + y + 8];
        for (let x = 0; x < 8; x++) {
          const c = ((lo >> (7 - x)) & 1) | (((hi >> (7 - x)) & 1) << 1);
          const index = c === 0 ? look.palette[0] : look.palette[palette * 4 + c];
          pixels[(ty * 8 + y) * width + tx * 8 + x] = NES_RGB[index & 0x3f];
        }
      }
    }
  }
  return { pixels, width, height };
}

if (import.meta.url === `file://${process.argv[1]}`) {
  const wanted = process.argv.slice(2).map(Number);
  const list = wanted.length ? wanted : [...Array(HEADERS).keys()];
  mkdirSync('out/levels', { recursive: true });
  const order = [...list].sort((p, q) => LOOK[p] - LOOK[q]);
  const run = new Run();
  for (const h of order) {
    const look = lookAt(run, LOOK[h]);
    const { pixels, width, height } = drawArea(h, look, run.m.cart.chr, tileBanks(h));
    writeFileSync(`out/levels/${h}.png`, encodePng(pixels, width, height, 1));
    const a = area(h);
    console.log(`header ${h} (${NAMES[h]}): ${a.cols}x${a.rows} blocks, bank ${a.bank}, layout prg ${a.layoutAt.toString(16)}, slots ${look.slots.map((s) => s.toString(16)).join(' ')}`);
  }
}
