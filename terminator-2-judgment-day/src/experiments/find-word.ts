/**
 * Where the PRG holds a 16-bit value (a jump's target, a table entry; also the value - 1, for an
 * RTS-dispatch table), and what comes before it.
 *   node --experimental-strip-types --no-warnings src/experiments/find-word.ts <hex> …
 */
import { prg } from '../level.ts';

for (const want of process.argv.slice(2).map((h) => parseInt(h, 16))) {
  for (const v of [want, want - 1]) {
    const lo = v & 255, hi = v >> 8;
    for (let o = 0; o + 1 < prg.length; o++) {
      if (prg[o] !== lo || prg[o + 1] !== hi) continue;
      const before = [...prg.subarray(Math.max(0, o - 3), o)].map((b) => b.toString(16).padStart(2, '0')).join(' ');
      console.log(`$${v.toString(16)} at PRG ${o.toString(16)} (before: ${before})`);
    }
  }
}
