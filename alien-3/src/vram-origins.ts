/**
 * Who writes the nametables on the way into level 1, and from where in the ROM the values come.
 *   node --experimental-strip-types src/vram-origins.ts [from frame] [to frame]
 * Groups $2007 writes to $2000-$2FFF by the instruction (PRG offset) and reports their origins.
 */
import { romFile } from './rom.ts';
import { Machine } from './machine.ts';
import { buttonsOf } from './shots.ts';
import { toCard, CARD_FRAME } from './path.ts';
import { Taint, originOffset, isDerived } from './taint.ts';

const from = Number(process.argv[2] ?? CARD_FRAME), to = Number(process.argv[3] ?? 1500);
const m = new Machine(romFile());
toCard(m);
if (process.env.LEVEL) m.ram[0xa8] = Number(process.env.LEVEL);
m.frames(from - CARD_FRAME);
const t = new Taint(m);
if (process.env.PAL) t.filter = (a) => a >= 0x3f00;
m.frames(to - from, process.env.HOLD ? buttonsOf(process.env.HOLD) : 0);
const h = (n: number, w = 4) => n.toString(16).toUpperCase().padStart(w, '0');
const byPc = new Map<number, typeof t.vramWrites>();
for (const w of t.vramWrites) {
  const k = w.pcOffset;
  if (!byPc.has(k)) byPc.set(k, []);
  byPc.get(k)!.push(w);
}
console.log(`${t.vramWrites.length} nametable writes, frames ${from}-${to}`);
for (const [off, ws] of [...byPc].sort((a, b) => b[1].length - a[1].length)) {
  const frames = new Set(ws.map((w) => w.frame));
  const origins = new Map<string, number>();
  for (const w of ws) {
    const o = w.origin === 0 ? 'unknown' : `${w.origin < 0 ? 'imm' : 'data'}${isDerived(w.origin) ? '*' : ''} ${h(originOffset(w.origin) & ~0xff, 5)}`;
    origins.set(o, (origins.get(o) ?? 0) + 1);
  }
  const froms = new Map<string, number>();
  for (const w of ws) { const k = w.readFrom < 0 ? '-' : h(w.readFrom & (process.env.PAL ? 0xffff : 0xfff0)); froms.set(k, (froms.get(k) ?? 0) + 1); }
  const top = (mm: Map<string, number>) => [...mm].sort((a, b) => b[1] - a[1]).slice(0, 5).map(([k, n]) => `${k}:${n}`).join(' ');
  console.log(`pc ${h(ws[0].pc)} (prg ${h(off, 5)}) ${ws.length} writes, frames ${Math.min(...frames)}-${Math.max(...frames)} (${frames.size})`);
  console.log(`   origins ${top(origins)}`);
  console.log(`   read from ${top(froms)}`);
}
