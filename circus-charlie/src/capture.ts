/**
 * Each stage's map as the TAS shows it (STATUS §3): the run replayed exactly; on every play frame
 * (`$0000` = 5 or 8: playing, the bonus at the goal) the play field — lines 44-239, drawn from the
 * nametable plane at x = the camera of the frame before mod 512, y = the line — is read cell by cell
 * into world coordinates: world column = (camera + screen x) / 8, row = plane row. A cell keeps every
 * value it was shown with (tile, palette) and on how many frames.
 *
 * Then every cell is set beside the stage's arena as the cartridge builds it (level.ts): what differs
 * is what the game wrote into the nametables during play (boards, fire pots, balls, obstacles …).
 *
 *   node --experimental-strip-types src/capture.ts   → out/stages/stageN.json, a report
 */
import { mkdirSync, writeFileSync } from 'node:fs';
import { replay, cameraOf, FIELD_TOP, FIELD_ROWS } from './replay.ts';
import { decodeArena, STAGE_NAMES } from './level.ts';


const r = replay();
const { core } = r;
interface Stage {
  /** World column → row → "tile,pal" → frames. */
  cells: Map<number, Map<number, Map<string, number>>>;
  frames: number;
  firstFrame: number;
  lastFrame: number;
  camLo: number;
  camHi: number;
  badScroll: number;
  /** The background pattern table the field was drawn with ($0000 or $1000), and on how many frames. */
  bgTables: Map<number, number>;
}
const stages = new Map<number, Stage>();
let prevCam = 0;
for (const f of r.movie) {
  core.buttons = f.buttons;
  core.runFrame();
  const ram = core.ram;
  const cam = prevCam;
  prevCam = cameraOf(ram);
  if (ram[0] !== 5 && ram[0] !== 8) continue;
  const stage = ram[0x64];
  let s = stages.get(stage);
  if (!s) stages.set(stage, (s = { cells: new Map(), frames: 0, firstFrame: f.frame, lastFrame: 0, camLo: 1e9, camHi: -1, badScroll: 0, bgTables: new Map() }));
  // The field must be drawn at the camera: every field line at plane x = camera mod 512, y = line.
  let ok = true;
  for (let l = FIELD_TOP; l < 240; l++) if (r.lineX[l] !== cam % 512 || r.lineY[l] !== l || !(r.lineMask[l] & 0x08)) ok = false;
  if (!ok) {
    s.badScroll++;
    continue;
  }
  s.frames++;
  const bg = (r.lineCtrl[100] & 0x10) << 8;
  s.bgTables.set(bg, (s.bgTables.get(bg) ?? 0) + 1);
  s.lastFrame = f.frame;
  s.camLo = Math.min(s.camLo, cam);
  s.camHi = Math.max(s.camHi, cam);
  const c0 = Math.floor(cam / 8);
  const c1 = Math.floor((cam + 255) / 8);
  for (let wc = c0; wc <= c1; wc++) {
    const pc = wc & 63;
    const page = pc >> 5;
    const cx = pc & 31;
    let col = s.cells.get(wc);
    if (!col) s.cells.set(wc, (col = new Map()));
    for (let row = FIELD_ROWS.first; row <= FIELD_ROWS.last; row++) {
      const tile = core.ciram[page * 0x400 + row * 32 + cx];
      const attr = core.ciram[page * 0x400 + 0x3c0 + (row >> 2) * 8 + (cx >> 2)];
      const pal = (attr >> (((row & 2) << 1) | (cx & 2))) & 3;
      const key = `${tile},${pal}`;
      let vals = col.get(row);
      if (!vals) col.set(row, (vals = new Map()));
      vals.set(key, (vals.get(key) ?? 0) + 1);
    }
  }
}

mkdirSync('out/stages', { recursive: true });
for (const [stage, s] of [...stages].sort((a, b) => a[0] - b[0])) {
  const arena = decodeArena(r.rom.prg, stage);
  const cols = [...s.cells.keys()].sort((a, b) => a - b);
  const first = cols[0];
  const width = cols[cols.length - 1] - first + 1;
  const rows = FIELD_ROWS.last - FIELD_ROWS.first + 1;
  const tiles: number[] = [];
  const pals: number[] = [];
  /** 1: shown with more than one value (animation / play); 2: differs from the arena. */
  const flags: number[] = [];
  let arenaSame = 0;
  let varying = 0;
  for (let row = FIELD_ROWS.first; row <= FIELD_ROWS.last; row++) {
    for (let wc = first; wc < first + width; wc++) {
      const vals = s.cells.get(wc)?.get(row);
      if (!vals) {
        tiles.push(-1);
        pals.push(0);
        flags.push(0);
        continue;
      }
      // The value shown on most frames stands for the cell.
      const [best] = [...vals].sort((a, b) => b[1] - a[1])[0];
      const [tile, pal] = best.split(',').map(Number);
      tiles.push(tile);
      pals.push(pal);
      const pc = wc & 63;
      const page = pc >> 5;
      const cx = pc & 31;
      const at = arena.ciram[page * 0x400 + 0x3c0 + (row >> 2) * 8 + (cx >> 2)];
      const aTile = arena.ciram[page * 0x400 + row * 32 + cx];
      const aPal = (at >> (((row & 2) << 1) | (cx & 2))) & 3;
      let flag = 0;
      if (vals.size > 1) {
        flag |= 1;
        varying++;
      }
      if (tile === aTile && pal === aPal) arenaSame++;
      else flag |= 2;
      flags.push(flag);
    }
  }
  const cells = tiles.filter((t) => t >= 0).length;
  writeFileSync(
    `out/stages/stage${stage + 1}.json`,
    JSON.stringify({ stage: stage + 1, name: STAGE_NAMES[stage], firstColumn: first, width, firstRow: FIELD_ROWS.first, rows, bgTables: Object.fromEntries(s.bgTables), frames: [s.firstFrame, s.lastFrame], camera: [s.camLo, s.camHi], tiles, pals, flags }),
  );
  console.log(
    `stage ${stage + 1} (${STAGE_NAMES[stage]}): frames ${s.firstFrame}-${s.lastFrame} (${s.frames} play, ${s.badScroll} not drawn at the camera), camera ${s.camLo}-${s.camHi}, ` +
      `${width} columns × ${rows} rows: ${cells} cells seen, ${arenaSame} as the arena (${((100 * arenaSame) / cells).toFixed(2)} %), ${varying} shown more than one way`,
  );
}
