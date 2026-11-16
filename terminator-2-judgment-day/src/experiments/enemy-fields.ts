/**
 * The fields the shot's hit test reads (`$9C29`-`$9CBF`, STATUS §18) for every object in a slot at a
 * frame: `$0547,Y` (0 or 1: skipped), `$04E7,Y` / `$0508,Y` (bit 7: skipped), `$04A7,Y` / `$04A8,Y`
 * (both 0: skipped), `$0507,Y` (the box's half width) and `$04E8,Y` (the hit flags), with the place.
 *   node --experimental-strip-types --no-warnings src/experiments/enemy-fields.ts <frame> …
 */
import { readCapture } from '../capture.ts';

const want = new Set(process.argv.slice(2).map(Number));
const h = (v: number) => v.toString(16).padStart(2, '0');
for (const c of readCapture()) {
  if (!want.has(c.frame)) continue;
  const r = c.ram;
  console.log(`frame ${c.frame} ($D1 ${r[0xd1]}): player ${r[0x427] | (r[0x428] << 8)},${r[0x447] | (r[0x448] << 8)}`);
  for (let y = 2; y < 0x20; y += 2) {
    if (!r[0x547 + y]) continue;
    const skip = r[0x547 + y] === 1 ? '0547=1' : (r[0x4e7 + y] | r[0x508 + y]) & 0x80 ? 'bit 7' : !(r[0x4a7 + y] | r[0x4a8 + y]) ? '04A7=0' : 'hittable';
    console.log(`   slot ${h(y)} at ${r[0x427 + y] | (r[0x428 + y] << 8)},${r[0x447 + y] | (r[0x448 + y] << 8)}: 0547 ${h(r[0x547 + y])} 04E7 ${h(r[0x4e7 + y])} 0508 ${h(r[0x508 + y])} 04A7 ${h(r[0x4a7 + y])}${h(r[0x4a8 + y])} 0507 ${h(r[0x507 + y])} 04E8 ${h(r[0x4e8 + y])} 04C8 ${h(r[0x4c8 + y])} 0027 ${h(r[0x27 + y])} -> ${skip}`);
  }
  if (c.frame >= Math.max(...want)) break;
}
