/**
 * A stage's arena as the cartridge builds it, decoded (STATUS §2).
 *
 * At the stage card the game clears the nametables to tile 0 ($C3E0) and runs two screen scripts
 * ($D2FD → $D342 twice), picked from the table at $D32E by the stage less one ($0064): entries
 * 4·stage and 4·stage+2, each a little-endian pointer. A script:
 *
 *   byte 0     low nibble: how many strips; bit 7: only the first strip carries a PPU address, the
 *              others go on where the one before stopped
 *   per strip  [PPU address lo, hi] (the first always; the rest unless bit 7), then
 *              [stream pointer lo, hi]
 *
 * A stream is written to $2007 byte by byte ($D389): $57 n v writes v n times (n = 0: 256), $5A ends
 * the strip; any other byte is a tile (or an attribute byte, past $23C0/$27C0).
 *
 * The cartridge is NROM with vertical mirroring: $2000/$2800 are one 1 KB page, $2400/$2C00 the other.
 */

export const STAGE_NAMES = ['lion and fire rings', 'tightrope', 'balls', 'horse', 'trapeze'] as const;

/** The CPU sees the 16 KB PRG at $C000 (and mirrored at $8000). */
export const cpuByte = (prg: Uint8Array, a: number) => prg[(a - 0x8000) & 0x3fff];
const word = (prg: Uint8Array, a: number) => cpuByte(prg, a) | (cpuByte(prg, a + 1) << 8);

/** A nametable address to its place in the 2 KB of the console's own video RAM. */
export const ciramIndex = (address: number) => ((address >> 10) & 1) * 0x400 + (address & 0x3ff);

export interface Strip {
  /** The PPU address it starts at, and the CPU address of its stream. */
  ppu: number;
  stream: number;
  /** How many bytes it wrote. */
  length: number;
}

export interface Arena {
  stage: number;
  /** The two 1 KB nametable pages as built: 32 × 30 tiles, then 64 attribute bytes, each. */
  ciram: Uint8Array;
  /** The screen scripts run, by their CPU address, with their strips. */
  scripts: { address: number; strips: Strip[] }[];
}

/** Stage 0-4 (`$0064`). */
export function decodeArena(prg: Uint8Array, stage: number): Arena {
  const ciram = new Uint8Array(0x800);
  const scripts: Arena['scripts'] = [];
  let ppu = 0x2000;
  for (const k of [0, 2]) {
    const address = word(prg, 0xd32e + stage * 4 + k);
    const head = cpuByte(prg, address);
    const strips: Strip[] = [];
    let p = address + 1;
    for (let n = head & 0x0f; n > 0; n--) {
      // $D35D: the first strip always reads its address.
      if (strips.length === 0 || !(head & 0x80)) {
        ppu = word(prg, p);
        p += 2;
      }
      const stream = word(prg, p);
      p += 2;
      const start = ppu;
      for (let q = stream; ; q++) {
        const b = cpuByte(prg, q);
        if (b === 0x5a) break;
        if (b === 0x57) {
          let count = cpuByte(prg, q + 1) || 256;
          const v = cpuByte(prg, q + 2);
          q += 2;
          for (; count > 0; count--) ciram[ciramIndex(ppu++)] = v;
        } else ciram[ciramIndex(ppu++)] = b;
      }
      strips.push({ ppu: start, stream, length: ppu - start });
    }
    scripts.push({ address, strips });
  }
  return { stage, ciram, scripts };
}
