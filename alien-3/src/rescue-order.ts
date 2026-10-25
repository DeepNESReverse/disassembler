/**
 * The order the run rescues the prisoners in, per level: the take's frame each prisoner's slot flags
 * become 8 (B14:$DFC2) while $A8 is that level → out/levels/rescue-order.json, {level: [slot, …]}.
 *   node --experimental-strip-types src/rescue-order.ts [take]
 */
import { readFileSync, writeFileSync } from 'node:fs';
import { parseTake } from './take.ts';

const take = parseTake(process.argv[2] ?? 'fceux/tas_take.play.txt');
const objects = JSON.parse(readFileSync('out/levels/objects.json', 'utf8')) as Record<string, { i: number; type: number }[]>;
const ram = new Uint8Array(0x800);
const order: Record<number, { slot: number; frame: number }[]> = {};
let level = -1;
for (let f = 0; f < take.buttons.length; f++) {
  const before = ram.slice(0x400, 0x420);
  for (const c of take.changes[f]) ram[c >> 8] = c & 255;
  if (ram[0xa8] !== level) level = ram[0xa8];
  const prisoners = (objects[level + 1] ?? []).filter((o) => o.type === 6);
  for (const o of prisoners)
    if (before[o.i] !== 8 && ram[0x400 + o.i] === 8 && !(order[level + 1] ?? []).some((r) => r.slot === o.i))
      (order[level + 1] ??= []).push({ slot: o.i, frame: f });
}
writeFileSync('out/levels/rescue-order.json', JSON.stringify(Object.fromEntries(Object.entries(order).map(([l, r]) => [l, r.map((x) => x.slot)]))) + '\n');
for (const [l, r] of Object.entries(order)) console.log(`level ${l}: ${r.map((x) => `${x.slot}@${x.frame}`).join(' → ')}`);
