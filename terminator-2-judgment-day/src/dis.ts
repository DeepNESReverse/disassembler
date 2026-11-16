/**
 * Disassemble PRG bytes: node --experimental-strip-types --no-warnings src/dis.ts <prg offset hex>:<cpu address hex>:<count hex> …
 */
import { disassemble } from '@xromdev/cpu6502';
import { prg } from './level.ts';

for (const r of process.argv.slice(2)) {
  const [off, cpu, n] = r.split(':').map((x) => parseInt(x, 16));
  console.log(`-- prg ${off.toString(16)} at $${cpu.toString(16)}`);
  console.log(disassemble(prg.subarray(off, off + n), cpu).join('\n'));
}
