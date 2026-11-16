/**
 * The area headers, as `$A3E0` loads them: a table of 9 pointers at CPU $A40C (PRG $640C, bank 3 at
 * $A000) into 27-byte entries in bank 2 at $8000 (PRG $4000) — 12 bytes to $A5-$B0, 13 to
 * $03CA-$03D6, then the address of a routine the loader jumps to.
 *   node --experimental-strip-types --no-warnings src/experiments/headers.ts
 */
import { parseRom } from '../../libs/nes/src/nes.ts';
import { romFile } from '../rom.ts';

const prg = parseRom(romFile()).prg;
const w = (o: number) => prg[o] | (prg[o + 1] << 8);
const h = (n: number, d = 2) => n.toString(16).padStart(d, '0');
for (let i = 0; i < 9; i++) {
  const p = w(0x640c + 2 * i);
  const o = 0x4000 + (p - 0x8000);
  const b = [...prg.subarray(o, o + 27)];
  const words = (s: number, n: number) => Array.from({ length: n }, (_, k) => h(b[s + 2 * k] | (b[s + 2 * k + 1] << 8), 4));
  console.log(`#${i} $${h(p, 4)}: ptrs ${words(0, 6).join(' ')} | 3ca.. ${b.slice(12, 25).map((x) => h(x)).join(' ')} | init $${h(w(o + 25), 4)}`);
}
