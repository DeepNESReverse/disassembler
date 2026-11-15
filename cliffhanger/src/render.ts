/**
 * Every section drawn whole from the cartridge (level.ts) -> out/levels/<nn>.png.
 *   node --experimental-strip-types --no-warnings src/render.ts [section …]
 * The background's CHR banks and the palette are the game's own at a frame of the TAS inside the
 * section (`SEEN`: 150 frames after it starts), the banks as the PPU reads them on line 100 (the
 * status bar below the field has its own, switched by the scanline IRQ).
 */
import { mkdirSync, writeFileSync } from 'node:fs';
import { encodePng } from '../libs/nes/src/png.ts';
import { NES_RGB } from '../libs/nes/src/palette.ts';
import { Run } from './run.ts';
import { SECTIONS, section, tileAt } from './level.ts';

/** The movie frame each section starts at ($040A changes: STATUS §2). */
export const STARTS = [984, 3490, 5230, 7055, 9153, 11505, 12024, 13870, 14603, 15236, 16811, 17978, 20191, 21443, 23511];

export interface Look {
  /** The CHR ROM offset of each of the background's 1 KB slots. */
  slots: number[];
  palette: Uint8Array;
}

/** The background's banks and palette at movie frame `f` (a Run that is not past it yet). */
export function lookAt(run: Run, f: number): Look {
  const m = run.m;
  const ppu = m.ppu as unknown as { scanline(l: number): void; ctrl: number };
  let slots: number[] = [];
  const scanline = ppu.scanline.bind(ppu);
  ppu.scanline = (line) => {
    scanline(line);
    if (line === 100) {
      const base = ppu.ctrl & 0x10 ? 0x1000 : 0;
      slots = [0, 1, 2, 3].map((i) => m.nes.mapper.chrAt!(base + i * 0x400));
    }
  };
  run.to(f);
  ppu.scanline = scanline;
  return { slots, palette: m.ppu.palette.slice() };
}

export function drawSection(index: number, look: Look, chr: Uint8Array): { pixels: Uint32Array; width: number; height: number } {
  const s = section(index);
  const width = s.width * 8;
  const height = s.height * 8;
  const pixels = new Uint32Array(width * height);
  for (let ty = 0; ty < s.height; ty++) {
    for (let tx = 0; tx < s.width; tx++) {
      const { tile, palette } = tileAt(s, tx, ty);
      const at = look.slots[tile >> 6] + (tile & 63) * 16;
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
  const list = wanted.length ? wanted : [...Array(SECTIONS).keys()];
  mkdirSync('out/levels', { recursive: true });
  const run = new Run();
  const chr = run.m.cart.chr;
  for (const i of [...list].sort((a, b) => a - b)) {
    const look = lookAt(run, STARTS[i] + 150);
    const { pixels, width, height } = drawSection(i, look, chr);
    writeFileSync(`out/levels/${String(i).padStart(2, '0')}.png`, encodePng(pixels, width, height, 1));
    console.log(`section ${i}: ${width}x${height}, chr slots ${look.slots.map((s) => s.toString(16)).join(' ')}`);
  }
}
