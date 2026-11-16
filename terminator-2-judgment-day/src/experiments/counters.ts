/**
 * RAM cells that count something during a stretch of the capture: few changes, small values — each
 * printed with the frames it changes on and its values (the bombs held and laid in Cyberdyne: the
 * status bar's HOLDING / DEPOSIT).
 *   node --experimental-strip-types --no-warnings src/experiments/counters.ts <from> <to> [max changes]
 */
import { readCapture } from '../capture.ts';

const [from, to, most = 30] = process.argv.slice(2).map(Number);
const changes = new Map<number, [number, number][]>();
let prev: Uint8Array | null = null;
for (const c of readCapture()) {
  if (c.frame < from) continue;
  if (c.frame > to) break;
  if (prev) for (let a = 0x10; a < 0x800; a++) {
    if ((a >= 0x100 && a < 0x200) || (a >= 0x200 && a < 0x300)) continue;
    if (c.ram[a] !== prev[a]) {
      const l = changes.get(a) ?? [];
      l.push([c.frame, c.ram[a]]);
      changes.set(a, l);
    }
  }
  prev = c.ram.slice();
}
for (const [a, l] of [...changes].sort((p, q) => p[0] - q[0])) {
  if (l.length > most || l.length < 2) continue;
  if (l.some(([, v]) => v > Number(process.env.MAXV ?? 20))) continue;
  console.log(`$${a.toString(16).padStart(4, '0')} ×${l.length}: ${l.map(([f, v]) => `${f}:${v}`).join(' ')}`);
}
