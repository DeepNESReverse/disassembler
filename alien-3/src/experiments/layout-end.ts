/**
 * Where a layout ends: the nearest thing after it in the same PRG bank that the headers point at
 * (every 16-bit field of every header whose data lives in that bank, and the headers themselves).
 */
import { loadCart } from '../render.ts';
import { readHeader } from '../level.ts';
const prg = loadCart().prg;
const headers = [...Array(12).keys()].map((n) => readHeader(prg, n));
for (const h of headers) {
  const marks: [number, string][] = [];
  for (const o of headers) {
    // Fields read in the blocks bank (pointers $04-$24 as words), the header's own address.
    if (o.blocksBank === h.layoutBank) {
      for (let zp = 0x04; zp <= 0x24; zp += 2) {
        const v = o.bytes[zp - 4 + 12] | (o.bytes[zp - 4 + 13] << 8);
        if (v >= 0x8000 && v < 0xa000) marks.push([v, `L${o.level + 1}.$${zp.toString(16)}`]);
      }
      marks.push([o.address, `L${o.level + 1}.header`]);
    }
    if (o.layoutBank === h.layoutBank && o.level !== h.level) marks.push([o.layout, `L${o.level + 1}.layout`]);
  }
  const after = marks.filter(([v, name]) => v > h.layout && !(name === `L${h.level + 1}.$18`)).sort((a, b) => a[0] - b[0]);
  const end = after.length ? after[0] : [0xa000, 'bank end'];
  const rows = Math.floor((end[0] as number - h.layout) / 64);
  console.log(`level ${h.level + 1}: layout $${h.layout.toString(16)} in bank ${h.layoutBank} → next $${(end[0] as number).toString(16)} (${end[1]}): ${rows} rows = ${rows / 8} pages`);
}
