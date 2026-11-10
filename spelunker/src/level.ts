/**
 * Spelunker's cave, decoded from the cartridge (STATUS §2 — every value by an experiment there).
 *
 * The map: 150 rows × 14 bytes at CPU $BE17 (PRG $3E17), a byte a metatile, rows top to bottom.
 * The row builder ($BC54) reads a row through ($10) with $8D7B and lays 14 metatiles side by side:
 * world width 56 tiles (448 px) — nametable $2000 holds columns 0-31, $2400 columns 32-55.
 * A metatile is 4 tiles wide and 2 high: 8 bytes at $C64B + 8 × index, (top, bottom) for each of
 * its four columns. A byte of $B0 or more is a thing that changes (`dynamicMetatile`), its state in
 * RAM $07C0 through the table $94A6.
 *
 * The world is 10 screens of 15 rows (240 px = the nametable's 30 tile rows); each screen has 8
 * attribute rows of 14 bytes at $CAEB (8 bytes for $23C0, 6 for $27C0): map row r is screen r / 15,
 * attribute row 8 × screen + (r mod 15) / 2, its upper half (bits of $0F) for an even r mod 15,
 * the lower ($F0) for an odd one ($BD6B).
 */
export const MAP = 0xbe17;
export const ROWS = 150;
export const COLS = 14; // metatiles a row
export const METATILES = 0xc64b;
export const ATTRS = 0xcaeb;
export const TILE_COLS = COLS * 4; // 56
export const TILE_ROWS = ROWS * 2; // 300

export interface Cart {
  prg: Uint8Array; // 32 KB at $8000
  chr: Uint8Array;
}
const at = (c: Cart, cpu: number) => c.prg[cpu - 0x8000];

/** The metatile a map byte draws, given the state RAM ($07C0-) — $8D7B. */
export function dynamicMetatile(c: Cart, v: number, ram: Uint8Array): number {
  if (v < 0xb0) return v;
  const n = v - 0xb0;
  const state = ram[0x7c0 + at(c, 0x94a6 + n)];
  if (n >= 0x30) return at(c, 0x94f6 + (n - 0x30) * 2 + (state === 0 ? 1 : 0));
  if (state === 0) return 0x80;
  if (state & 0x80) return 0x53;
  return 0x82 + ((state & 0x30) >> 4);
}

/** The world as tiles and palettes: tiles[row][col], palettes[row][col] (0-3). */
export function decode(c: Cart, ram: Uint8Array) {
  const tiles: number[][] = Array.from({ length: TILE_ROWS }, () => new Array(TILE_COLS).fill(0));
  const pals: number[][] = Array.from({ length: TILE_ROWS }, () => new Array(TILE_COLS).fill(0));
  for (let r = 0; r < ROWS; r++) {
    const screen = Math.floor(r / 15), q = r % 15;
    const attrRow = ATTRS + (screen * 8 + (q >> 1)) * 14;
    for (let m = 0; m < COLS; m++) {
      const mt = dynamicMetatile(c, at(c, MAP + r * 14 + m), ram);
      for (let i = 0; i < 4; i++) {
        const col = m * 4 + i;
        tiles[r * 2][col] = at(c, METATILES + mt * 8 + i * 2);
        tiles[r * 2 + 1][col] = at(c, METATILES + mt * 8 + i * 2 + 1);
        // The attribute byte of this 32-px column: 8 for $23C0 (columns 0-31), then 6 for $27C0.
        const a = at(c, attrRow + (col >> 2));
        for (const dy of [0, 1]) {
          const ty = (q * 2 + dy) & 3; // row within the 32-px attribute cell
          pals[r * 2 + dy][col] = (a >> (((ty & 2) << 1) | (col & 2))) & 3;
        }
      }
    }
  }
  return { tiles, pals };
}
