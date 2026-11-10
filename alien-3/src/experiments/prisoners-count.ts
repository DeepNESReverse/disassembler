// Prisoners by the code: object types whose handler (table $A5D5 by type, B14:$C5A3) decrements the
// prisoners-left counter $0747. Per level: objects of type 6 and 5 in the header's table (X 2048 =
// a spare slot, left out) against header byte $2F (→ $0746/$0747, "Pr:" on the status bar).
import { Level } from '../level.ts';
import { loadCart } from '../render.ts';
const prg = loadCart().prg;
for (let n = 0; n < 12; n++) {
  const lv = new Level(prg, n), h = lv.header;
  const t = h.bytes[0x1e - 4 + 12] | (h.bytes[0x1e - 4 + 13] << 8);
  const b = (a: number) => prg[h.blocksBank * 0x2000 + (a & 0x1fff)];
  const by: Record<number, string[]> = {};
  for (let i = 0; i < 32; i++) {
    const x = b(t + i) | (b(t + 32 + i) << 8), y = b(t + 64 + i) | (b(t + 96 + i) << 8), type = b(t + 128 + i);
    if (x === 2048) continue;
    (by[type] ??= []).push(`${x},${y}`);
  }
  console.log(`level ${n + 1}: $2F = ${h.bytes[0x2f]}; type 6: ${by[6]?.length ?? 0} [${by[6]?.join(' ') ?? ''}]; type 5: ${by[5]?.length ?? 0} [${by[5]?.join(' ') ?? ''}]`);
}
