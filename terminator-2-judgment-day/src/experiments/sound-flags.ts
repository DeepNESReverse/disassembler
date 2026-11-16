/**
 * Where the sound driver (bank 8, PRG $10000-$111FF) tests its channel flags $39-$3E: every
 * `LDA zp` / `BIT zp` of them, with the code after it.
 *   node --experimental-strip-types --no-warnings src/experiments/sound-flags.ts
 */
import { disassemble } from '@xromdev/cpu6502';
import { prg } from '../level.ts';

for (let o = 0x10000; o < 0x11200; o++) {
  if ((prg[o] === 0xa5 || prg[o] === 0x24) && prg[o + 1] >= 0x39 && prg[o + 1] <= 0x3e) {
    const lines = disassemble(prg.subarray(o, o + 8), 0x8000 + (o - 0x10000));
    console.log(lines.slice(0, 3).join('   '));
  }
}
