/**
 * Where the nametable writes come from over the TAS: the run replayed on nes-explorer's core with
 * its taint shadow (every byte carries the ROM offset it was loaded from), each $2007 write to
 * $2000-$2FFF grouped by stage, writing instruction and the ROM range its values came from.
 *
 *   node --experimental-strip-types src/vram-origins.ts [--from F] [--to F]
 */
import { Core, parseRom } from '../../nes-explorer/src/core/core.ts';
import { Taint, originOffset, isDerived, isImmediate } from '../../nes-explorer/src/core/taint.ts';
import { romFile } from './rom.ts';
import { readMovie } from './movie.ts';

const arg = (k: string, d: number) => {
  const i = process.argv.indexOf(k);
  return i > 0 ? Number(process.argv[i + 1]) : d;
};
const from = arg('--from', 0);
const to = arg("--to", 1e9);
// The PPU range looked at: the nametables by default, `--palette` for $3F00-$3F1F.
const [lo, hi] = process.argv.includes("--palette") ? [0x3f00, 0x4000] : [0x2000, 0x3000];
const movie = readMovie();
const core = new Core(parseRom(romFile()));
const taint = new Taint(core);
const hex = (n: number, w = 4) => n.toString(16).toUpperCase().padStart(w, '0');

interface Group { stage: number; pc: number; kind: string; n: number; lo: number; hi: number; frames: Set<number>; addrs: Set<number> }
const groups = new Map<string, Group>();
for (const f of movie) {
  taint.vramWrites.length = 0;
  core.buttons = f.buttons;
  core.runFrame();
  if (f.frame < from || f.frame > to) continue;
  const stage = core.ram[0x63];
  for (const w of taint.vramWrites) {
    if (w.address < lo || w.address >= hi) continue;
    const o = w.origin;
    const kind = o === 0 ? 'none' : isImmediate(o) ? 'imm' : isDerived(o) ? 'derived' : 'data';
    const off = originOffset(o);
    const key = `${stage}/${w.pc}/${kind}/${kind === 'none' ? 0 : off >> 8}`;
    let g = groups.get(key);
    if (!g) groups.set(key, (g = { stage, pc: w.pc, kind, n: 0, lo: 1e9, hi: -1, frames: new Set(), addrs: new Set() }));
    g.n++;
    if (off >= 0) { g.lo = Math.min(g.lo, off); g.hi = Math.max(g.hi, off); }
    g.frames.add(f.frame);
    g.addrs.add(w.address);
  }
}
for (const g of [...groups.values()].sort((a, b) => a.stage - b.stage || a.pc - b.pc || a.lo - b.lo)) {
  const fr = [...g.frames];
  console.log(
    `stage ${g.stage} pc ${hex(g.pc)} ${g.kind.padEnd(7)} ${String(g.n).padStart(6)} writes` +
      (g.hi >= 0 ? `  PRG ${hex(g.lo)}-${hex(g.hi)}` : '') +
      `  frames ${Math.min(...fr)}-${Math.max(...fr)} (${fr.length})  ${g.addrs.size} cells`,
  );
}
