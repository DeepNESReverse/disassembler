// The header's object table ($1E): 32 objects, fields 32 bytes apart (B15:$EA86 copies the first
// four — X lo, X hi, Y lo, Y hi — to $0420.. ). Dump all 8 fields of every object of a level.
import { Level } from '../level.ts';
import { loadCart } from '../render.ts';
const n = Number(process.argv[2] ?? 1) - 1;
const prg = loadCart().prg;
const lv = new Level(prg, n);
const h = lv.header;
const t = h.bytes[0x1e - 4 + 12] | (h.bytes[0x1e - 4 + 13] << 8);
const b = (a: number) => prg[h.blocksBank * 0x2000 + (a & 0x1fff)];
console.log(`level ${n + 1}: objects at $${t.toString(16)}`);
for (let i = 0; i < 32; i++) {
  const f = Array.from({ length: 8 }, (_, k) => b(t + k * 32 + i));
  console.log(String(i).padStart(2), `X ${f[0] | (f[1] << 8)}`.padEnd(8), `Y ${f[2] | (f[3] << 8)}`.padEnd(8), f.slice(4).map((v) => v.toString(16).padStart(2, '0')).join(' '));
}
