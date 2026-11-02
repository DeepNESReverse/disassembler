/**
 * The decoded arena (level.ts) against the game: the TAS replayed, and on the frame each stage's
 * screen scripts ran ($D395/$D3A2 wrote), the console's video RAM compared with the decode cell by
 * cell — the cells the scripts wrote, and every other cell apart.
 *
 *   node --experimental-strip-types src/check-arena.ts
 */
import { Core, parseRom } from '../../nes-explorer/src/core/core.ts';
import { romFile } from './rom.ts';
import { readMovie } from './movie.ts';
import { decodeArena, STAGE_NAMES } from './level.ts';

const rom = parseRom(romFile());
const core = new Core(rom);
let built = false;
core.onExec = (pc) => {
  if (pc === 0xd2fd) built = true;
};
for (const f of readMovie()) {
  built = false;
  core.buttons = f.buttons;
  core.runFrame();
  if (!built) continue;
  const stage = core.ram[0x64];
  const arena = decodeArena(rom.prg, stage);
  let same = 0;
  const diff: string[] = [];
  for (let i = 0; i < 0x800; i++) {
    if (core.ciram[i] === arena.ciram[i]) same++;
    else diff.push(`${(0x2000 + (i >> 10) * 0x400 + (i & 0x3ff)).toString(16)}:${core.ciram[i].toString(16)}/${arena.ciram[i].toString(16)}`);
  }
  const strips = arena.scripts.map((s) => `$${s.address.toString(16).toUpperCase()}×${s.strips.length}`).join(' ');
  // Which rows the differences fall on, per page (row 30-31: the attribute bytes).
  const rows = new Map<string, number>();
  for (const d of diff) {
    const a = parseInt(d, 16);
    const key = `${(a >> 10) & 1}:${(a & 0x3ff) >> 5}`;
    rows.set(key, (rows.get(key) ?? 0) + 1);
  }
  console.log(`  rows (page:row ×cells): ${[...rows].map(([k, n]) => `${k}×${n}`).join(' ')}`);
  console.log(`frame ${f.frame} stage ${stage + 1} (${STAGE_NAMES[stage]}), scripts ${strips}: ${same}/2048 same; differ (game/decode): ${diff.slice(0, 16).join(' ')}${diff.length > 16 ? ` … ${diff.length}` : ''}`);
}
