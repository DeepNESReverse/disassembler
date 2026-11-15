/**
 * Who writes the nametables between two movie frames of the TAS, and from where in the ROM the
 * values come (taint.ts): `$2007` writes to $2000-$2FFF grouped by the instruction.
 *   node --experimental-strip-types --no-warnings src/vram-origins.ts <from> <to>
 * PAL=1: the palette writes instead.
 */
import { Run } from './run.ts';
import { Taint, originOffset, isDerived } from './taint.ts';

const from = Number(process.argv[2]);
const to = Number(process.argv[3]);
const run = new Run();
run.to(from);
const t = new Taint(run.m);
if (process.env.PAL) t.filter = (a) => a >= 0x3f00;
run.to(to);
const h = (n: number, w = 4) => n.toString(16).toUpperCase().padStart(w, '0');
const byPc = new Map<number, typeof t.vramWrites>();
for (const w of t.vramWrites) {
  if (!byPc.has(w.pcOffset)) byPc.set(w.pcOffset, []);
  byPc.get(w.pcOffset)!.push(w);
}
console.log(`${t.vramWrites.length} writes, movie frames ${from}-${to}`);
const top = (mm: Map<string, number>) =>
  [...mm].sort((a, b) => b[1] - a[1]).slice(0, 6).map(([k, n]) => `${k}:${n}`).join(' ');
for (const [off, ws] of [...byPc].sort((a, b) => b[1].length - a[1].length)) {
  const frames = new Set(ws.map((w) => w.frame));
  const origins = new Map<string, number>();
  const froms = new Map<string, number>();
  for (const w of ws) {
    const o = w.origin === 0 ? 'unknown' : `${w.origin < 0 ? 'imm' : 'data'}${isDerived(w.origin) ? '*' : ''} ${h(originOffset(w.origin) & ~0xff, 5)}`;
    origins.set(o, (origins.get(o) ?? 0) + 1);
    const k = w.readFrom < 0 ? '-' : h(w.readFrom & (process.env.PAL ? 0xffff : 0xfff0));
    froms.set(k, (froms.get(k) ?? 0) + 1);
  }
  console.log(`pc ${h(ws[0].pc)} (prg ${h(off, 5)}) ${ws.length} writes, ${frames.size} frames`);
  console.log(`   origins ${top(origins)}`);
  console.log(`   read from ${top(froms)}`);
}
