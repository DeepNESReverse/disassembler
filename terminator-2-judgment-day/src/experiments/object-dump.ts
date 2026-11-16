/**
 * The RAM from $0400 to $05FF at a frame, as 32-byte rows (an object table's arrays are 32 slots
 * wide if it is laid out the way the player's cells suggest: X $0427/$0428, Y $0447/$0448), with the
 * camera and the player beside.
 *   node --experimental-strip-types --no-warnings src/experiments/object-dump.ts <frame> …
 */
import { Run } from '../run.ts';

const run = new Run();
const m = run.m;
for (const f of process.argv.slice(2).map(Number).sort((p, q) => p - q)) {
  run.to(f);
  const r = m.ram;
  console.log(`frame ${f}: camera ${r[0xc4] | (r[0xc5] << 8)},${r[0xc6] | (r[0xc7] << 8)}  player ${r[0x427] | (r[0x428] << 8)},${r[0x447] | (r[0x448] << 8)}`);
  for (let a = 0x400; a < 0x600; a += 32) {
    console.log(`  $${a.toString(16)}: ${[...r.subarray(a, a + 32)].map((v) => v.toString(16).padStart(2, '0')).join(' ')}`);
  }
}
