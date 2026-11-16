/**
 * An area of Terminator 2 as the cartridge holds it (STATUS §5), read the way the game's header
 * loader (`$A3E0`), its column builder (`$D875` + `$D6FF`) and its attribute builder (`$D797`) read it.
 *
 * The header table: 9 words at CPU $A40C (bank 3 at $A000, PRG $640C), each the CPU address of a
 * 27-byte header in bank 2 at $8000 (PRG $4000). The loader takes header `2 × X`; which `$D1` (the
 * area the script picks) loads which header is in `AREA_OF_HEADER` (src/experiments/header-loads.ts).
 *   +0  6 words  -> $A5-$B0: the blocks' top-left, top-right, bottom-left and bottom-right tiles
 *                 ($A5, $A7, $A9, $AB: `LDA ($A5),Y` with Y = the block), their attributes ($AD:
 *                 the palette, 0-3) and a sixth table ($AF, not read yet)
 *  +12  byte    -> $03CA: the layout's row stride, in blocks (`$D875` adds it per row)
 *  +13  byte    -> $03CB: rows of blocks
 *  +14  4 words -> $03CC-$03D3: not read yet (camera limits?)
 *  +22  byte    -> $03D4: the 8 KB PRG bank mapped at $8000 for the area ($E37B), its next at $A000
 *  +23  word    -> $03D5: the layout's CPU address in that 16 KB
 *  +25  word    the routine the loader jumps to (`JMP ($93)`)
 * The layout is one byte a 16 × 16 block, row by row; the tables are indexed by the block.
 */
import { parseRom } from '../libs/nes/src/nes.ts';
import { romFile } from './rom.ts';

export const prg = parseRom(romFile()).prg;
const word = (o: number) => prg[o] | (prg[o + 1] << 8);

export const HEADERS = 9;
/** `$D1` → header, as the TAS loads them (src/experiments/header-loads.ts). */
export const HEADER_OF_AREA: Record<number, number> = { 0: 0, 1: 6, 2: 1, 3: 2, 4: 3, 5: 4, 6: 5, 7: 7, 8: 8 };
/** By header, from the pictures (out/levels) and the order the TAS enters them. */
export const NAMES = [
  'steel mill', 'hospital offices', 'hospital corridors', 'hospital elevator', 'cyberdyne corridors',
  'truck stop', 'flood channel', 'cyberdyne labs', 'bar',
];

export interface Area {
  header: number;
  /** The header's 27 bytes, as they are. */
  raw: number[];
  bank: number;
  /** PRG offsets of the four tile tables (TL, TR, BL, BR), the attributes and the sixth table. */
  tables: number[];
  layoutAt: number;
  cols: number;
  rows: number;
  blocks: Uint8Array;
  /** The header's four words at +14 ($03CC-$03D3). */
  limits: number[];
  routine: number;
}

export function area(header: number): Area {
  const at = 0x4000 + (word(0x640c + 2 * header) - 0x8000);
  const raw = [...prg.subarray(at, at + 27)];
  const bank = raw[22];
  const inBank = (cpu: number) => bank * 0x2000 + (cpu - 0x8000);
  const tables = [0, 1, 2, 3, 4, 5].map((k) => inBank(word(at + 2 * k)));
  const cols = raw[12];
  const rows = raw[13];
  const layoutAt = inBank(word(at + 23));
  return {
    header, raw, bank, tables, layoutAt, cols, rows,
    blocks: prg.slice(layoutAt, layoutAt + cols * rows),
    limits: [0, 1, 2, 3].map((k) => word(at + 14 + 2 * k)),
    routine: word(at + 25),
  };
}

/** The tile number and palette at tile (tx, ty). */
export function tileAt(a: Area, tx: number, ty: number): { tile: number; palette: number } {
  const block = a.blocks[(ty >> 1) * a.cols + (tx >> 1)];
  const tile = prg[a.tables[((ty & 1) << 1) | (tx & 1)] + block];
  return { tile, palette: prg[a.tables[4] + block] & 3 };
}
