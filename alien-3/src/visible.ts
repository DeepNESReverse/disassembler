/**
 * What a player can see of a level, honestly (the user's way): what Randil's run showed
 * (out/levels/run-seen.json), then a search in the game — no no-clip; untouchable, health and the
 * timer held; the exit kept from ending the level — over every place the player can reach with
 * src/paths.ts' actions (walk, jumps, ladders, lifts, doors at their panels), marking every frame
 * what the camera's field (256 × 176 at $1A-$1D) covers, in 8-px tiles.
 * → out/levels/visible.json: {level: {w, h, run: rows, search: rows}} (rows as run-seen.json's);
 *   the search's rows hold only what it saw that the run did not.
 *   node --experimental-strip-types src/visible.ts <level 1-12> [--nodes 30000]
 */
import { existsSync, readFileSync, writeFileSync } from 'node:fs';
import { saveState } from './machine.ts';
import { cardState } from './teleport.ts';
import { cheats, explore, EXIT_JUMP, EXIT_RTS, type Prisoner } from './paths.ts';
import { Level } from './level.ts';

const args = process.argv.slice(2);
const n = Number(args[0]) - 1;
const maxNodes = Number(args.includes('--nodes') ? args[args.indexOf('--nodes') + 1] : 30000);
const runSeen = JSON.parse(readFileSync('out/levels/run-seen.json', 'utf8'))[n + 1];
const { m } = cardState(n);
const level = new Level(m.cart.prg, n);
const W = level.widthTiles, H = level.heightTiles;
const decode = (rows: string[]) => {
  const a = new Uint8Array(W * H);
  rows.forEach((row, ty) => { let x = 0, s = false; for (const k of row.split(',').map(Number)) { if (s) a.fill(1, ty * W + x, ty * W + x + k); x += k; s = !s; } });
  return a;
};
const encode = (a: Uint8Array) => Array.from({ length: H }, (_, ty) => {
  const runs: number[] = []; let v = 0, k = 0;
  for (let tx = 0; tx < W; tx++) { const c = a[ty * W + tx]; if (c === v) k++; else { runs.push(k); v = c; k = 1; } }
  runs.push(k); return runs.join(',');
});
const run = decode(runSeen.rows);
const search = new Uint8Array(W * H);
let lastCam = '';
const mark = () => {
  const r = m.ram;
  const cx = ((r[0x1a] | (r[0x1b] << 8)) << 16) >> 16, cy = ((r[0x1c] | (r[0x1d] << 8)) << 16) >> 16;
  const key = `${cx},${cy}`;
  if (key === lastCam) return;
  lastCam = key;
  const x0 = Math.floor(cx / 8), y0 = Math.floor(cy / 8);
  for (let ty = Math.max(0, y0); ty < Math.min(H, y0 + 22); ty++) for (let tx = Math.max(0, x0); tx < Math.min(W, x0 + 32); tx++) search[ty * W + tx] = 1;
};
m.nes.beforeVblank = () => cheats(m, true);
const exit = { fired: false };
m.hooks.exec = (pc) => { if (pc === EXIT_JUMP && m.bankAt(pc) === 13) { exit.fired = true; m.cpu.pc = EXIT_RTS; } };
m.frames(1180 - 900);
const prisoners = (JSON.parse(readFileSync('out/levels/objects.json', 'utf8'))[n + 1] as (Prisoner & { type: number })[]).filter((o) => o.type === 6);
const g = explore(m, saveState(m, true), prisoners, exit, maxNodes, false, true, -1, undefined, 16, mark);
const only = new Uint8Array(W * H);
let both = 0, onlyN = 0, runN = 0;
for (let i = 0; i < W * H; i++) { if (run[i]) runN++; if (search[i] && !run[i]) { only[i] = 1; onlyN++; } if (search[i] && run[i]) both++; }
const file = 'out/levels/visible.json';
const all = existsSync(file) ? JSON.parse(readFileSync(file, 'utf8')) : {};
all[n + 1] = { w: W, h: H, run: runSeen.rows, search: encode(only), places: g.places.length, runTiles: runN, searchOnly: onlyN, total: runN + onlyN, tiles: W * H };
writeFileSync(file, JSON.stringify(all) + '\n');
console.log(`level ${n + 1}: ${g.places.length} places searched; run saw ${runN} tiles, the search ${both + onlyN} (${onlyN} the run did not); visible ${runN + onlyN} of ${W * H} (${((100 * (runN + onlyN)) / (W * H)).toFixed(1)} %)`);
