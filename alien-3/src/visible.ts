/**
 * What a player can see of a level, honestly (the user's way): what Randil's run showed
 * (out/levels/run-seen.json), then a search in the game — no no-clip; untouchable, health and the
 * timer held; the exit kept from ending the level — over every place the player can reach with
 * src/paths.ts' actions (walk, jumps, ladders, lifts, doors at their panels), marking every frame
 * what the camera's field (256 × 176 at $1A-$1D) covers, in 8-px tiles.
 * → out/levels/visible.json: {level: {w, h, run: rows, search: rows}} (rows as run-seen.json's);
 *   the search's rows hold only what it saw that the run did not.
 *   node --experimental-strip-types src/visible.ts <level 1-12> [--nodes 30000]
 *   … --seeds          also from Randil's spots the search never reached (--seed-nodes 4000 each)
 *   … --dump           also runs/visible/<nn>-dump.json: the places reached and all the search saw
 *   … --target tx,ty   only until the camera shows that 8-px tile; what it saw is added to the
 *                      level's search rows already in visible.json (a place the user saw in play)
 */
import { existsSync, mkdirSync, readFileSync, writeFileSync } from 'node:fs';
import { loadState, saveState } from './machine.ts';
import { cardState, teleportOnBuild } from './teleport.ts';
import { cheats, explore, keyOf, pos, EXIT_JUMP, EXIT_RTS, type Prisoner } from './paths.ts';
import { Level } from './level.ts';

const args = process.argv.slice(2);
const n = Number(args[0]) - 1;
const maxNodes = Number(args.includes('--nodes') ? args[args.indexOf('--nodes') + 1] : 30000);
const runSeen = JSON.parse(readFileSync('out/levels/run-seen.json', 'utf8'))[n + 1];
const { m, state: card } = cardState(n);
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
const target = args.includes('--target') ? args[args.indexOf('--target') + 1].split(',').map(Number) : null;
let lastCam = '';
const mark = () => {
  const r = m.ram;
  const cx = ((r[0x1a] | (r[0x1b] << 8)) << 16) >> 16, cy = ((r[0x1c] | (r[0x1d] << 8)) << 16) >> 16;
  const key = `${cx},${cy}`;
  if (key === lastCam) return;
  lastCam = key;
  const x0 = Math.floor(cx / 8), y0 = Math.floor(cy / 8);
  // Every tile the 256 × 176 field touches: 33 × 23 when the camera is not on a tile's edge.
  const x1 = Math.ceil((cx + 256) / 8), y1 = Math.ceil((cy + 176) / 8);
  if (target && !search[target[1] * W + target[0]] && target[0] >= x0 && target[0] < x1 && target[1] >= y0 && target[1] < y1) console.log(`target ${target} marked: player ${pos(m)}, camera ${cx},${cy}`);
  for (let ty = Math.max(0, y0); ty < Math.min(H, y1); ty++) for (let tx = Math.max(0, x0); tx < Math.min(W, x1); tx++) search[ty * W + tx] = 1;
};
m.nes.beforeVblank = () => cheats(m, true);
const exit = { fired: false };
m.hooks.exec = (pc) => { if (pc === EXIT_JUMP && m.bankAt(pc) === 13) { exit.fired = true; m.cpu.pc = EXIT_RTS; } };
m.frames(1180 - 900);
const prisoners = (JSON.parse(readFileSync('out/levels/objects.json', 'utf8'))[n + 1] as (Prisoner & { type: number })[]).filter((o) => o.type === 6);
const stop = target ? () => { if (search[target[1] * W + target[0]] !== 1) return false; console.log(`target ${target} first shown: player ${pos(m)}, camera ${m.ram[0x1a] | (m.ram[0x1b] << 8)},${m.ram[0x1c] | (m.ram[0x1d] << 8)}`); return true; } : undefined;
const g = explore(m, saveState(m, true), prisoners, exit, maxNodes, false, true, -1, undefined, 16, mark, stop);
if (target) {
  // Only adds: the rest of the level's search is what the full search found.
  const prev = existsSync('out/levels/visible.json') ? JSON.parse(readFileSync('out/levels/visible.json', 'utf8'))[n + 1] : null;
  if (prev) decode(prev.search).forEach((v, i) => { if (v) search[i] = 1; });
  console.log(`target ${target}: ${search[target[1] * W + target[0]] ? 'shown' : 'NOT shown'} after ${g.places.length} places`);
}
// --seeds: where the search never stood but Randil did (fceux/tas_trail-randil.txt), the search
// starts again from there — the player teleported onto his spot (a page-top camera with the spot in
// its field), the rest as from the level's start. A move the search lacks (level 10: stepping off
// a ledge and steering back in the fall, STATUS §26) then no longer walls off half a level; every
// seed is a place a player stood in the game, so what is seen from it a player can see.
const places = g.places.map((p) => p.p);
if (args.includes('--seeds')) {
  const perSeed = Number(args.includes('--seed-nodes') ? args[args.indexOf('--seed-nodes') + 1] : 4000);
  // His spots on the ground: Y the same as the frame before (in the air he would fall from there).
  const spots: [number, number][] = [];
  const seenSpot = new Set<string>();
  let lastY = -1;
  for (const line of readFileSync('fceux/tas_trail-randil.txt', 'utf8').split('\n')) {
    const [, lv, x, y] = line.split(' ').map(Number);
    const ground = y === lastY;
    lastY = y;
    if (lv !== n || !(x > 0) || !ground) continue;
    const k = `${x >> 4},${y >> 4}`;
    if (!seenSpot.has(k)) { seenSpot.add(k); spots.push([x, y]); }
  }
  const known = new Set(g.places.filter((p) => p.done).map((p) => p.key));
  const near = (p: [number, number]) => places.some((q) => Math.abs(q[0] - p[0]) <= 48 && Math.abs(q[1] - p[1]) <= 48);
  const tried = new Set<number>();
  for (let seeds = 0; seeds < 80; seeds++) {
    const i = spots.findIndex((p, k) => !tried.has(k) && !near(p) && p[1] % 240 < 168);
    if (i < 0) break;
    tried.add(i);
    const [px, py] = spots[i];
    loadState(m, card);
    m.hooks.exec = (pc) => { if (pc === EXIT_JUMP && m.bankAt(pc) === 13) { exit.fired = true; m.cpu.pc = EXIT_RTS; } };
    teleportOnBuild(m, level, Math.max(0, Math.min(W * 8 - 256, Math.floor((px - 128) / 32) * 32)), Math.floor(py / 240) * 240, px, py);
    m.frames(1180 - 900);
    const at = pos(m);
    if (Math.abs(at[0] - px) > 16 || Math.abs(at[1] - py) > 16) { console.log(`seed (${px}, ${py}): the player did not stay (at ${at})`); continue; }
    const h = explore(m, saveState(m, true), prisoners, exit, perSeed, false, false, -1, undefined, 16, mark, undefined, known);
    const fresh = h.places.filter((p) => !known.has(p.key));
    for (const p of fresh) { known.add(p.key); places.push(p.p); }
    console.log(`seed (${px}, ${py}): ${fresh.length} new places`);
  }
}
// --dump: the places reached and everything the search saw (runs/visible/<nn>-dump.json), to see
// where a search stopped short.
if (args.includes('--dump')) writeFileSync(`runs/visible/${String(n + 1).padStart(2, '0')}-dump.json`, JSON.stringify({ w: W, h: H, places, search: encode(search) }));
const only = new Uint8Array(W * H);
let both = 0, onlyN = 0, runN = 0;
for (let i = 0; i < W * H; i++) { if (run[i]) runN++; if (search[i] && !run[i]) { only[i] = 1; onlyN++; } if (search[i] && run[i]) both++; }
// With --part, a level's own file (runs/visible/<nn>.json) — several levels run at once and
// src/visible-merge.py gathers them into out/levels/visible.json.
const file = args.includes('--part') ? `runs/visible/${String(n + 1).padStart(2, '0')}.json` : 'out/levels/visible.json';
const all = existsSync(file) ? JSON.parse(readFileSync(file, 'utf8')) : {};
all[n + 1] = { w: W, h: H, run: runSeen.rows, search: encode(only), places: places.length, runTiles: runN, searchOnly: onlyN, total: runN + onlyN, tiles: W * H };
mkdirSync('runs/visible', { recursive: true });
writeFileSync(file, JSON.stringify(all) + '\n');
console.log(`level ${n + 1}: ${places.length} places searched; run saw ${runN} tiles, the search ${both + onlyN} (${onlyN} the run did not); visible ${runN + onlyN} of ${W * H} (${((100 * (runN + onlyN)) / (W * H)).toFixed(1)} %)`);
