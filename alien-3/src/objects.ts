/**
 * The objects of every level, from the header's table ($1E: 32 objects, fields 32 bytes apart — X,
 * Y, type and three more, copied by B15:$EA86 to $0420/$0440/$0460/$0480/$04E0…), written to
 * out/levels/objects.json for the viewer. A prisoner is type 6: its handler (table $A5D5 by type,
 * B14:$C5A3) is B14:$DFBB, which counts a rescue (`DEC $0747`, `INC $068A`); on every level the
 * number of type-6 objects equals header byte $2F, the prisoners shown as "Pr:" (STATUS.md §14).
 *   node --experimental-strip-types src/objects.ts
 */
import { writeFileSync } from 'node:fs';
import { Level, LEVELS } from './level.ts';
import { loadCart } from './render.ts';

export const PRISONER = 6;
/** X 2048 and beyond: a slot the level does not use (seen on every level's last slots). */
export const SPARE_X = 2048;

const prg = loadCart().prg;
const out: Record<number, { i: number; x: number; y: number; type: number; fields: number[] }[]> = {};
for (let n = 0; n < LEVELS; n++) {
  const h = new Level(prg, n).header;
  const t = h.bytes[0x1e - 4 + 12] | (h.bytes[0x1e - 4 + 13] << 8);
  const b = (a: number) => prg[h.blocksBank * 0x2000 + (a & 0x1fff)];
  out[n + 1] = [];
  for (let i = 0; i < 32; i++) {
    const f = Array.from({ length: 8 }, (_, k) => b(t + k * 32 + i));
    const x = f[0] | (f[1] << 8), y = f[2] | (f[3] << 8);
    if (x >= SPARE_X) continue;
    out[n + 1].push({ i, x, y, type: f[4], fields: f.slice(5) });
  }
}
writeFileSync('out/levels/objects.json', JSON.stringify(out) + '\n');
console.log(Object.entries(out).map(([n, o]) => `${n}: ${o.filter((x) => x.type === PRISONER).length} prisoners`).join(', '));
