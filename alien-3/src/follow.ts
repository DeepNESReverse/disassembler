/**
 * The user's route, played: each point of the line the user drew on a map (out/levels/user-paths)
 * is a goal; from the game's real state, the cheapest way (src/paths.ts' search, the same actions
 * and cheats) to within 16 px of the next point, then on; after the last point, the exit. Prisoners
 * are rescued on the way. The whole run is then played back from the level's start, exit live.
 *   node --experimental-strip-types src/follow.ts <level 1-12> [--nodes 3000]
 * → out/levels/<nn>-follow.json: frames, prisoners rescued, exit reached, the trail, the inputs.
 */
import { readFileSync, writeFileSync } from 'node:fs';
import { loadState, saveState } from './machine.ts';
import { cardState } from './teleport.ts';
import { cheats, dijkstra, explore, inputsOf, pos, walk, EXIT_JUMP, EXIT_RTS, type Prisoner } from './paths.ts';

const args = process.argv.slice(2);
const n = Number(args[0]) - 1;
const nn = String(n + 1).padStart(2, '0');
const maxNodes = Number(args.includes('--nodes') ? args[args.indexOf('--nodes') + 1] : 3000);
const line = (JSON.parse(readFileSync(`out/levels/user-paths/${nn}.json`, 'utf8')).lines[0]) as [number, number][];
const prisoners = (JSON.parse(readFileSync('out/levels/objects.json', 'utf8'))[n + 1] as (Prisoner & { type: number })[]).filter((o) => o.type === 6);

const { m } = cardState(n);
m.nes.beforeVblank = () => cheats(m);
const exit = { fired: false, live: false };
m.hooks.exec = (pc) => { if (pc === EXIT_JUMP && m.bankAt(pc) === 13) { exit.fired = true; if (!exit.live) m.cpu.pc = EXIT_RTS; } };
m.frames(1180 - 900);
const start = saveState(m, true);
let here = start;
const inputs: number[] = [];
const legs: string[] = [];
const goals: ({ near: [number, number] } | { exit: true })[] = [...line.map((p) => ({ near: p })), { exit: true }];
for (const [k, goal] of goals.entries()) {
  loadState(m, here);
  const [x, y] = pos(m);
  if ('near' in goal && Math.abs(x - goal.near[0]) <= 16 && Math.abs(y - goal.near[1]) <= 16) continue;
  const leg = 'exit' in goal
    ? explore(m, here, prisoners, exit, maxNodes, true, false)
    : explore(m, here, prisoners, exit, maxNodes, false, false, -1, goal.near);
  const what = 'exit' in goal ? 'the exit' : `point ${k + 1} (${goal.near})`;
  if (leg.exitEdge < 0) { legs.push(`${what}: not reached from (${x}, ${y}), ${leg.places.length} places searched`); console.log(legs.at(-1)); break; }
  const d = dijkstra(leg.places.length, leg.edges, 0);
  const end = leg.edges[leg.exitEdge];
  const legInputs = inputsOf([...walk(d.prev, leg.edges, end.from).map((e) => leg.edges[e]), end]);
  inputs.push(...legInputs);
  loadState(m, here);
  for (const b of legInputs) m.frame(b);
  here = saveState(m, true);
  legs.push(`${what}: ${legInputs.length} frames, now at (${pos(m)}), rescued so far ${prisoners.filter((o) => m.ram[0x400 + o.i] === 8).length}`);
  console.log(legs.at(-1));
}

// The whole run from the start, exit live.
loadState(m, start);
exit.fired = false; exit.live = true;
const trail: [number, number][] = [];
let frames = 0;
for (const b of inputs) { m.frame(b); frames++; if (frames % 4 === 0) trail.push(pos(m)); if (exit.fired) break; }
const rescued = prisoners.filter((o) => m.ram[0x400 + o.i] === 8).map((o) => o.i);
const result = { level: n + 1, frames, seconds: +(frames / 60.0988).toFixed(1), rescued, prisoners: prisoners.map((o) => o.i), exit: exit.fired, legs, trail, inputs: inputs.join(',') };
writeFileSync(`out/levels/${nn}-follow.json`, JSON.stringify(result) + '\n');
console.log(`playback: ${frames} frames (${result.seconds} s), rescued ${rescued.length}/${prisoners.length}, exit ${exit.fired ? 'reached' : 'NOT reached'}`);
