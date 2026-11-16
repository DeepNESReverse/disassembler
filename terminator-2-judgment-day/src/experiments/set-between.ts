/**
 * Cells set on the screens between two levels and held through the next level's play: changed
 * between frame `a` (the end of a level) and `b` (the next one's start), then constant up to `c`.
 *   node --experimental-strip-types --no-warnings src/experiments/set-between.ts <a> <b> <c>
 */
import { readCapture } from '../capture.ts';

const [a, b, c] = process.argv.slice(2).map(Number);
let atA: Uint8Array | null = null, atB: Uint8Array | null = null;
const moved = new Uint8Array(0x800);
for (const cap of readCapture()) {
  if (cap.frame === a) atA = cap.ram.slice();
  if (cap.frame === b) atB = cap.ram.slice();
  if (atB && cap.frame > b && cap.frame <= c) for (let x = 0; x < 0x800; x++) if (cap.ram[x] !== atB[x]) moved[x] = 1;
  if (cap.frame > c) break;
}
for (let x = 0x10; x < 0x800; x++) {
  if (x >= 0x100 && x < 0x300) continue;
  if (atA![x] !== atB![x] && !moved[x]) console.log(`$${x.toString(16).padStart(4, '0')}: ${atA![x].toString(16)} -> ${atB![x].toString(16)}`);
}
