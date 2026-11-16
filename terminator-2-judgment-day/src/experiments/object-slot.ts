/**
 * One placed object's slot through a stretch of the run: every frame its slot's cells (the arrays from
 * $0407 + $20 k, both bytes of the slot's word, and $0027,X) that changed, beside the player's place.
 * The object is found by its flags byte (`$04C8,X`) and its place, as object-life.ts does.
 *   node --experimental-strip-types --no-warnings src/experiments/object-slot.ts <$D1> <flags hex> <from> <to>
 */
import { objectsOf } from '../objects.ts';
import { Run } from '../run.ts';

const [d1s, flagsHex, froms, tos] = process.argv.slice(2);
const d1 = Number(d1s), flags = parseInt(flagsHex, 16), from = Number(froms), to = Number(tos);
const p = objectsOf(d1).find((q) => q.flags === flags)!;
const run = new Run();
const m = run.m;
let last = '';
for (let f = from; f <= to; f++) {
  run.to(f);
  const r = m.ram;
  let slot = -1;
  for (let x = 2; x < 0x20; x += 2) {
    const ox = r[0x427 + x] | (r[0x428 + x] << 8);
    if (r[0x4c8 + x] === flags && Math.abs(ox - p.x) < 64) slot = x;
  }
  if (slot < 0) continue;
  // The slot arrays are words, 16 slots each, from $0407 + $20 k ($0427 X, $0447 Y, …, $0547).
  const cells = [0x27, ...Array.from({ length: 16 }, (_, k) => 0x407 + 0x20 * k), ...Array.from({ length: 16 }, (_, k) => 0x408 + 0x20 * k)].map((b) => r[b + slot] ?? 0);
  const k = cells.map((v) => v.toString(16).padStart(2, '0')).join(' ');
  if (k !== last) console.log(`${f} slot ${slot.toString(16)} player ${r[0x427] | (r[0x428] << 8)},${r[0x447] | (r[0x448] << 8)}: $27 ${k.slice(0, 2)} | lo $407.. ${k.slice(3, 3 + 48)} | hi $408.. ${k.slice(3 + 48)}`);
  last = k;
}
