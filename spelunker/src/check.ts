/**
 * The decoded cave against the game, frame by frame over the TAS: every nametable cell the PPU
 * draws below the status bar is looked up in the world `level.ts` decodes (with that frame's state
 * RAM for the things that change). A plane row R is world tile row 30·k + R (the world is screens of
 * 30 tile rows, the nametable one screen tall); k is the screen whose row best matches, and must be
 * the same for every cell of the row. Plane column c is world column c ($2000) or 32 + c ($2400).
 *
 *   node --experimental-strip-types src/check.ts [--to F]
 */
import { Core, parseRom } from '../../nes-explorer/src/core/core.ts';
import { romFile } from './rom.ts';
import { readMovie } from './movie.ts';
import { decode, TILE_COLS } from './level.ts';

const to = process.argv.includes('--to') ? Number(process.argv[process.argv.indexOf('--to') + 1]) : 1e9;
const rom = parseRom(romFile());
const core = new Core(rom);
const c = core as unknown as { drawLine(l: number): void; refreshAddr: number; xOffset: number; mask: number; render: boolean; port2: boolean };
c.port2 = true;
const lineX = new Int16Array(240), lineY = new Int16Array(240), lineMask = new Uint8Array(240);
const draw = c.drawLine.bind(core);
c.drawLine = (line: number) => {
  const v = c.refreshAddr;
  lineX[line] = ((v >> 10) & 1) * 256 + (v & 31) * 8 + c.xOffset;
  lineY[line] = ((v >> 11) & 1) * 240 + ((v >> 5) & 31) * 8 + ((v >> 12) & 7);
  lineMask[line] = c.mask;
  draw(line);
};
c.render = true;
const cart = { prg: rom.prg, chr: rom.chr };
let frames = 0, cells = 0, bad = 0, firstBad = '';
const badFrames = new Map<number, number>();
const statusLines = new Map<number, number>();
const byRow = new Map<number, number>();
const pairs = new Map<string, number>();
const from = process.argv.includes('--from') ? Number(process.argv[process.argv.indexOf('--from') + 1]) : 0;
let cached: ReturnType<typeof decode> | undefined, cachedKey = '';
for (const f of readMovie()) {
  if (f.frame > to) break;
  core.buttons = f.buttons; core.buttons2 = f.buttons2; core.runFrame();
  if (f.frame < from || !(lineMask[120] & 0x08)) continue; // background off: a card, not the cave
  // The last line where the scroll jumps (0 when none).
  // No split: every line runs on from the one above (checked: statusLines) — the status bar is sprites.
  let top = 0;
  for (let l = 1; l < 240; l++) if (lineY[l] !== (lineY[l - 1] + 1) % 480 && !(lineY[l - 1] === 239 && lineY[l] === 0) || lineX[l] !== lineX[l - 1]) top = l;
  statusLines.set(top, (statusLines.get(top) ?? 0) + 1);
  const key = Buffer.from(core.ram.subarray(0x7c0, 0x800)).toString('hex');
  if (key !== cachedKey) { cached = decode(cart, core.ram); cachedKey = key; }
  const world = cached!;
  const shown = new Map<number, Set<number>>(); // plane row → plane columns 0-63
  for (let l = top; l < 240; l++) {
    const R = Math.floor((lineY[l] % 240) / 8);
    const s = shown.get(R) ?? new Set<number>(); shown.set(R, s);
    for (let x = 0; x < 256; x += 8) { s.add(Math.floor(((lineX[l] + x) % 512) / 8)); s.add(Math.floor(((lineX[l] + x + 7) % 512) / 8)); }
  }
  frames++;
  for (const [R, colsSet] of shown) {
    const colsList = [...colsSet].filter((p) => p < 32 || p - 32 < TILE_COLS - 32);
    let best = -1, bestMiss = 1e9;
    for (let k = 0; k < 10; k++) {
      let miss = 0;
      for (const p of colsList) {
        const v = core.ciram[(p >> 5) * 0x400 + R * 32 + (p & 31)];
        if (world.tiles[30 * k + R][p] !== v) miss++;
      }
      if (miss < bestMiss) { bestMiss = miss; best = k; }
    }
    if (bestMiss) for (const p of colsList) { const v = core.ciram[(p >> 5) * 0x400 + R * 32 + (p & 31)]; const w = world.tiles[30 * best + R][p]; if (v !== w) { const kind = w === 0 && (v === 0xb1 || v === 0xb3) ? 'lift cable' : w === 0 && v === 0x0b ? 'start lift cable' : (v & 0xf8) === 0xd0 && (w & 0xf8) === 0xd0 ? 'animated D0-D7' : [0,1,2,3,4,5,6,7,8,9].some((k2) => k2 !== best && world.tiles[30 * k2 + R][p] === v) ? 'another screen\'s row (not rebuilt yet)' : `${w.toString(16)}>${v.toString(16)} R${R} c${p} s${best} f${f.frame}`; const k = kind; pairs.set(k, (pairs.get(k) ?? 0) + 1); } }
    if (process.env.DUMP && f.frame === Number(process.env.DUMP) && bestMiss) for (const p of colsList) { const v = core.ciram[(p >> 5) * 0x400 + R * 32 + (p & 31)]; const w = world.tiles[30 * best + R][p]; if (v !== w) console.log(`R${R} col${p} screen${best} game ${v.toString(16)} world ${w.toString(16)}`); }
    cells += colsList.length; bad += bestMiss;
    if (bestMiss) byRow.set(R, (byRow.get(R) ?? 0) + bestMiss);
    if (bestMiss) { badFrames.set(f.frame, (badFrames.get(f.frame) ?? 0) + bestMiss); if (!firstBad) firstBad = `frame ${f.frame} row ${R} screen ${best}: ${bestMiss}`; }
  }
}
console.log(`${frames} frames with the cave, ${cells} cells shown, ${bad} differ (${((100 * bad) / cells).toFixed(4)} %)`);
console.log('status bar lines:', [...statusLines].sort((a, b) => b[1] - a[1]).slice(0, 4));
console.log('first:', firstBad, 'frames with differences:', badFrames.size);
console.log('world>game:', [...pairs].sort((a, b) => b[1] - a[1])
  .slice(0, 60).map(([k, n]) => `${k}:${n}`).join(' '));
console.log('by plane row:', [...byRow].sort((a, b) => a[0] - b[0]).map(([r, n]) => `${r}:${n}`).join(' '));
console.log([...badFrames].slice(0, 30).map(([f, n]) => `${f}:${n}`).join(' '));
