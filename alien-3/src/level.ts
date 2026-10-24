/**
 * A level of Alien 3 decoded from the cartridge (format: FORMAT.md).
 *
 * The loader B15:$E9D5 takes the level number $A8 to three fixed-bank tables — the PRG bank of the
 * blocks ($C031), of the layout ($C03D), and the header's address in the blocks bank ($C019) — and
 * copies header bytes $0C-$2E to zero page $04-$26. The builder B15:$EB3F/$EB83 then turns layout
 * bytes into 4 × 4-tile blocks and one attribute byte a block.
 */

export const LEVELS = 12;
/** The layout is 64 blocks a row: the builder adds $40 for a block down (B15:$EB71). */
export const LAYOUT_WIDTH = 64;
export const BLOCK = 32;
/**
 * Vertically the world is pages of 240 px, the height of a nametable: 8 rows of blocks a page, the
 * last only half seen (its top 16 px are nametable rows 28-29; below them are the attributes).
 * The builder knows the half row: B15:$E924 tests the block row in the page ($3D) against 7.
 */
export const PAGE_TILES = 30;
export const PAGE_BLOCKS = 8;

const BLOCKS_BANK = 0x1c031 - 0x1c000;
const LAYOUT_BANK = 0x1c03d - 0x1c000;
const HEADERS = 0x1c019 - 0x1c000;
const FIXED = 0x1c000;

export interface Header {
  level: number;
  /** PRG 8 KB banks seen at $8000 while blocks / layout are read. */
  blocksBank: number;
  layoutBank: number;
  /** CPU address of the header in the blocks bank. */
  address: number;
  /** The header's 64 bytes. */
  bytes: Uint8Array;
  /** $04: block tiles, 16 a block, row-major. */
  tiles: number;
  /** $06: one attribute byte a block. */
  attributes: number;
  /** $08: the layout's first byte (row 0, column 0). */
  layout: number;
  /** $18: the layout byte at the camera's start, $1A/$1B and $1C/$1D: the camera's start. */
  startByte: number;
  cameraX: number;
  cameraY: number;
  /** $24: 32 palette bytes ($3F00-$3F1F), in the blocks bank. */
  palette: number;
  /** $26: the background's CHR — 1 KB banks $26..$26+3 at PPU $0000 (R0 = $26, R1 = $26 + 2). */
  chr: number;
}

export function readHeader(prg: Uint8Array, level: number): Header {
  const blocksBank = prg[FIXED + BLOCKS_BANK + level];
  const layoutBank = prg[FIXED + LAYOUT_BANK + level];
  const address = prg[FIXED + HEADERS + 2 * level] | (prg[FIXED + HEADERS + 2 * level + 1] << 8);
  const at = blocksBank * 0x2000 + (address & 0x1fff);
  const bytes = prg.slice(at, at + 0x40);
  // Zero page $04 + n is header byte $0C + n.
  const zp = (cell: number) => bytes[cell - 0x04 + 0x0c] | (bytes[cell - 0x04 + 0x0d] << 8);
  return {
    level,
    blocksBank,
    layoutBank,
    address,
    bytes,
    tiles: zp(0x04),
    attributes: zp(0x06),
    layout: zp(0x08),
    startByte: zp(0x18),
    cameraX: zp(0x1a),
    cameraY: zp(0x1c),
    palette: zp(0x24),
    chr: bytes[0x26 - 0x04 + 0x0c],
  };
}

export class Level {
  readonly header: Header;
  /** Rows of blocks decoded. */
  readonly rows: number;
  private readonly prg: Uint8Array;

  constructor(prg: Uint8Array, level: number, rows?: number) {
    this.prg = prg;
    this.header = readHeader(prg, level);
    // As many rows as fit in the layout bank after the layout's start.
    this.rows = rows ?? Math.min(64, Math.floor((0xa000 - this.header.layout) / LAYOUT_WIDTH));
  }

  private byte(bank: number, cpu: number): number {
    return this.prg[bank * 0x2000 + (cpu & 0x1fff)];
  }

  /** The block number at block column x, row y. */
  block(x: number, y: number): number {
    return this.byte(this.header.layoutBank, this.header.layout + y * LAYOUT_WIDTH + x);
  }

  /** PRG offset of the layout byte at block x, y (for FORMAT.md / the check's reports). */
  layoutOffset(x: number, y: number): number {
    return this.header.layoutBank * 0x2000 + ((this.header.layout + y * LAYOUT_WIDTH + x) & 0x1fff);
  }

  /** A block's attribute byte (its four 16 × 16 quarters' palettes). */
  attributeByte(id: number): number {
    return this.byte(this.header.blocksBank, this.header.attributes + id);
  }

  /** The world tile (index row * widthTiles + col) of a block's top-left corner, from its layout row/column. */
  blockCorner(bx: number, layoutRow: number): number {
    const row = Math.floor(layoutRow / PAGE_BLOCKS) * PAGE_TILES + (layoutRow % PAGE_BLOCKS) * 4;
    return row * this.widthTiles + bx * 4;
  }

  /** The block number under tile tx, ty of the world. */
  blockAt(tx: number, ty: number): number {
    return this.block(tx >> 2, Math.floor(ty / PAGE_TILES) * PAGE_BLOCKS + ((ty % PAGE_TILES) >> 2));
  }

  /** Tile number and palette (0-3) at tile column tx, row ty of the world (pages of 30 rows). */
  tile(tx: number, ty: number): { tile: number; palette: number } {
    const r = ty % PAGE_TILES;
    const id = this.block(tx >> 2, Math.floor(ty / PAGE_TILES) * PAGE_BLOCKS + (r >> 2));
    const h = this.header;
    const tile = this.byte(h.blocksBank, h.tiles + id * 16 + (r & 3) * 4 + (tx & 3));
    const attr = this.byte(h.blocksBank, h.attributes + id);
    return { tile, palette: (attr >> (((r & 2) << 1) | (tx & 2))) & 3 };
  }

  get widthTiles() {
    return LAYOUT_WIDTH * 4;
  }
  /** Whole pages of the layout's rows. */
  get pages() {
    return Math.floor(this.rows / PAGE_BLOCKS);
  }
  get heightTiles() {
    return this.pages * PAGE_TILES;
  }

  /** The level's palette as the header gives it (32 bytes). */
  palette(): Uint8Array {
    const h = this.header;
    return Uint8Array.from({ length: 32 }, (_, i) => this.byte(h.blocksBank, h.palette + i));
  }
}
