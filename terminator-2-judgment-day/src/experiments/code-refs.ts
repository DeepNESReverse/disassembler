/**
 * Every instruction in the PRG that names an address — absolute (abs, abs,X/Y, indirect) or, for a
 * cell below $100, zero page (zp, zp,X/Y, (zp,X), (zp),Y): where the game reads or writes a RAM cell.
 * (Every byte is tried as an opcode, so data may show up too.)
 *   node --experimental-strip-types --no-warnings src/experiments/code-refs.ts <address hex> …
 */
import { OPCODES, disassemble } from '@xromdev/cpu6502';
import { prg } from '../level.ts';

for (const want of process.argv.slice(2).map((h) => parseInt(h, 16))) {
  console.log(`== $${want.toString(16)}`);
  for (let o = 0; o + 2 < prg.length; o++) {
    const op = OPCODES[prg[o]];
    if (!op) continue;
    const zp = ['zp', 'zpx', 'zpy', 'izx', 'izy'].includes(op.mode);
    if (!zp && !['abs', 'abx', 'aby', 'ind'].includes(op.mode)) continue;
    if (zp ? want > 0xff || prg[o + 1] !== want : (prg[o + 1] | (prg[o + 2] << 8)) !== want) continue;
    const cpu = 0x8000 + (o & 0x1fff) + ((o & 0x2000) ? 0x2000 : 0);
    const at = o >= 0x1c000 ? 0xc000 + (o - 0x1c000) : cpu;
    console.log(`   PRG ${o.toString(16)}: ${disassemble(prg.subarray(o, o + 3), at)[0]}`);
  }
}
