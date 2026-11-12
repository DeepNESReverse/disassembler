/**
 * Gyrodine's field, gathered from the user's run replayed on nes-explorer's core (its immortality as
 * played): one row each time the field moves 8 px, read ROW rows under the screen's top, both
 * nametables, with the attribute palettes and the background palette of that frame. Then the check:
 * every frame's rows against the map at the camera.
 *
 *   node --experimental-strip-types --no-warnings src/record.ts [out dir, default runs]
 *       → rows.json, check.json
 */
import { readFileSync, writeFileSync } from 'node:fs';
import { resolve } from 'node:path';
import { Core, interventionsOf, parseRom, pathFiles, readPath, step } from './explorer.ts';
import { romFile } from './rom.ts';

const repo = resolve(import.meta.dirname, '..');
const RUN = resolve(repo, 'runs/play-20261112-1219');
const out = resolve(process.argv[2] ?? resolve(repo, 'runs'));
const ROW = Number(process.env.ROW ?? 2);
const rom = parseRom(romFile());
const path = readPath(pathFiles(RUN)[0]);

type Row = { tiles: number[]; pals: number[]; palette: string; frame: number };
const rowOf = (core: InstanceType<typeof Core>, r: number): Row => {
  const tiles: number[] = [];
  const pals: number[] = [];
  for (let c = 0; c < 64; c++) {
    const nt = (c >> 5) * 0x400;
    const x = c & 31;
    tiles.push(core.ciram[nt + r * 32 + x]);
    const a = core.ciram[nt + 0x3c0 + (r >> 2) * 8 + (x >> 2)];
    pals.push((a >> (((r & 2) << 1) | (x & 2))) & 3);
  }
  return { tiles, pals, palette: Buffer.from(core.palette.subarray(0, 16)).toString('hex'), frame: core.frame };
};
const cam = (core: InstanceType<typeof Core>) => {
  const t = core.tempAddr;
  return { y: ((t >> 5) & 31) * 8 + ((t >> 12) & 7), nt: (t >> 10) & 3, cx: t & 31, fx: core.xOffset };
};

function replay(each: (core: InstanceType<typeof Core>, n: number) => void) {
  const core = new Core(rom);
  const iv = interventionsOf(RUN, { at: 0, pokes: [], pins: [] });
  for (let n = 0; n < path.length; n++) {
    step(core, path, n, iv);
    each(core, n);
  }
  return core;
}

// Pass 1: rows. `moving` from the first frame the field moves after the life starts (534).
const rows: Row[] = [];
let opening: Row[] = [];
let prevCoarse = -1;
let started = -1;
const oddCam = new Map<string, number>();
replay((core, n) => {
  const c = cam(core);
  if (n > 534) {
    const k = `${c.nt},${c.cx},${c.fx}`;
    oddCam.set(k, (oddCam.get(k) ?? 0) + 1);
  }
  const coarse = c.y >> 3;
  if (n > 600 && started < 0 && prevCoarse >= 0 && coarse !== prevCoarse) {
    started = n;
    for (let s = 29; s >= ROW; s--) opening.push(rowOf(core, (coarse + s) % 30));
  }
  if (started >= 0 && coarse !== prevCoarse && n !== started) rows.push(rowOf(core, (coarse + ROW) % 30));
  prevCoarse = coarse;
});
const xs = [...oddCam].map(([k, v]) => { const [nt, cx, fx] = k.split(',').map(Number); return [(nt & 1) * 256 + cx * 8 + fx, v]; }).sort((a, b) => a[0] - b[0]);
console.log('camera x seen (x: frames):', xs.map(([x, v]) => `${x}:${v}`).join(' '));
console.log(`moving from ${started}; ${opening.length} opening rows, ${rows.length} rows`);

// The loop: the shortest period after which the rows repeat for 200 rows on.
const key = (r: Row) => r.tiles.join(',');
const keys = [...opening, ...rows].map(key);
let period = -1;
let loopAt = -1;
for (let p = 300; p < keys.length - 200 && period < 0; p++)
  for (let i = 0; i + p + 200 <= keys.length; i += 50) {
    let ok = true;
    for (let j = 0; j < 200 && ok; j++) ok = keys[i + j] === keys[i + p + j];
    if (ok) {
      period = p;
      loopAt = i;
      break;
    }
  }
console.log('period', period, 'rows, first repeat from row', loopAt);
writeFileSync(`${out}/rows.json`, JSON.stringify({ started, row: ROW, opening, rows, period, loopAt }));

// Pass 2: the check — map row m sits at nametable row (coarse0 + … ) by the count of coarse steps.
const all = [...opening, ...rows];
let steps = 0;
let prev = -1;
let frames = 0;
let cells = 0;
let wrong = 0;
const wrongFrames: number[] = [];
replay((core, n) => {
  const coarse = cam(core).y >> 3;
  if (n >= started) {
    if (n > started && coarse !== prev) steps++;
    // Screen row s (0 top) is nametable row (coarse + s) % 30; the opening's last row is s = ROW at
    // the start; each step later the same nametable row holds one map row further on.
    frames++;
    let bad = 0;
    for (let s = ROW; s < 30; s++) {
      const m = opening.length - 1 - (s - ROW) + steps;
      if (m < 0 || m >= all.length) continue;
      const r = (coarse + s) % 30;
      for (let c = 0; c < 64; c++) {
        cells++;
        if (core.ciram[(c >> 5) * 0x400 + r * 32 + (c & 31)] !== all[m].tiles[c]) bad++;
      }
    }
    wrong += bad;
    if (bad && wrongFrames.length < 2000) wrongFrames.push(n);
  }
  prev = coarse;
});
console.log(`check: ${frames} frames, ${wrong} of ${cells} cells differ; first frames with any: ${wrongFrames.slice(0, 10).join(' ')}`);
writeFileSync(`${out}/check.json`, JSON.stringify({ frames, cells, wrong, wrongFrames }));
