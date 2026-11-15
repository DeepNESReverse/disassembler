/**
 * A section of Cliffhanger as the cartridge holds it (STATUS §3). Read the way the game's loader
 * ($D42A) and its row/column builders ($DFEF, $E440) read it:
 *
 * The section table, 12 bytes a section at CPU $C5E7 (fixed bank, PRG $1C5E7), picked by $0404:
 *   +0 word  width in tiles  -> $06F4 (the layout's row stride is width / 2 -> $06F8)
 *   +2 word  height in tiles -> $06F6
 *   +4 word  CPU address of a 3-byte source entry: word address, byte 16 KB PRG bank
 *   +6 byte  background CHR: R0 = 2 * it, R1 = 2 * it + 2 ($D514), so the field's 4 KB is at
 *            CHR it * 2 KB
 *   +7 byte  skipped by the loader (0 in all 15)
 *   +8 word  the player's start X -> $0616/$0617, in tiles, 8.8 fixed point (the player's X)
 *   +10 word the player's start Y -> $061D/$061E, the same (the player's Y)
 * The palette is the section's own: 32 bytes at PRG $12400 + 32 * section, copied by $CB6D (bank 4,
 * base word $C595, index $0404 from $CCFC) into $052A, the fade's target (STATUS §5).
 * At the source address (in its bank, mapped at $8000 by $D58E: R6 = 2 * bank, R7 = 2 * bank + 1)
 * a chain of chunks, each a word (its length, the word included) and its bytes ($D554 returns the
 * bytes' address and steps over the chunk): the layout -> $06EA, the blocks' tiles -> $06ED, the
 * blocks' attributes -> $06F0, a fourth -> $040D (not read yet); the end of that minus 2 -> $040B.
 *
 * The layout is one byte a 16 x 16 block, row by row. A block's four tiles are 4 bytes at
 * tiles + 4 * block: top left, top right, bottom left, bottom right. Its attribute byte is merged
 * into the attribute table with the quadrant's mask, so its palette is (attr >> 2 * quadrant) & 3.
 */
import { parseRom } from '../libs/nes/src/nes.ts';
import { romFile } from './rom.ts';

export const SECTIONS = 15;
const TABLE = 0x1c5e7;
const PALETTES = 0x12400;

export interface Section {
  index: number;
  /** In tiles. */
  width: number;
  height: number;
  bank: number;
  chr: number;
  /** PRG offsets. */
  layoutAt: number;
  tilesAt: number;
  attrsAt: number;
  fourthAt: number;
  /** Blocks across and down; `blocks[row * cols + col]`. */
  cols: number;
  rows: number;
  blocks: Uint8Array;
  /** The player's start, in pixels. */
  start: { x: number; y: number };
  /** Background then sprite palettes, 32 bytes. */
  palette: Uint8Array;
  /** The section table's 12 bytes, as they are. */
  raw: number[];
}

export const prg = parseRom(romFile()).prg;

/** The PRG offset a CPU address $8000-$BFFF reads with 16 KB bank `bank` mapped at $8000. */
const inBank = (bank: number, cpu: number) => bank * 0x4000 + (cpu - 0x8000);
const word = (o: number) => prg[o] | (prg[o + 1] << 8);

export function section(index: number): Section {
  const t = TABLE + 12 * index;
  const raw = [...prg.subarray(t, t + 12)];
  const width = word(t);
  const height = word(t + 2);
  const entry = 0x1c000 + (word(t + 4) - 0xc000);
  const source = word(entry);
  const bank = prg[entry + 2];
  const chunks: number[] = [];
  for (let at = source, n = 0; n < 4; n++) {
    chunks.push(inBank(bank, at + 2));
    at = (at + word(inBank(bank, at))) & 0xffff;
  }
  const rel = (n: number) => chunks[n];
  const cols = width >> 1;
  const rows = height >> 1;
  const layoutAt = rel(0);
  return {
    index,
    width,
    height,
    bank,
    chr: prg[t + 6],
    layoutAt,
    tilesAt: rel(1),
    attrsAt: rel(2),
    fourthAt: rel(3),
    cols,
    rows,
    blocks: prg.slice(layoutAt, layoutAt + cols * rows),
    start: { x: word(t + 8) / 32, y: word(t + 10) / 32 },
    palette: prg.slice(PALETTES + 32 * index, PALETTES + 32 * index + 32),
    raw,
  };
}

/** The tile number and palette at tile (tx, ty) of a section. */
export function tileAt(s: Section, tx: number, ty: number): { tile: number; palette: number } {
  const block = s.blocks[(ty >> 1) * s.cols + (tx >> 1)];
  const tile = prg[s.tilesAt + 4 * block + ((ty & 1) << 1) + (tx & 1)];
  const quadrant = ((tx >> 1) & 1) | (((ty >> 1) & 1) << 1);
  const palette = (prg[s.attrsAt + block] >> (2 * quadrant)) & 3;
  return { tile, palette };
}
