/**
 * The shortest way through a level — from the start, every prisoner, then the exit — with the game
 * itself as the physics: from each place the player has settled on, short actions are tried on
 * save states (walk, jump, climb), and where each one leaves him, after how many frames, is an
 * edge. Places are explored cheapest first (Dijkstra over frames), so the first time a place is
 * reached is by the fastest way the actions find. Then the order of the prisoners is chosen over
 * the graph, and the whole run — a list of pad inputs — is played back from the level's start to
 * check that it does what the graph says.
 *
 * Cheats, the only ones: the game's own invulnerability timer held (`$03C8`, STATUS §16) and
 * health held (`$074A`): enemies neither hurt nor throw the player. Searching, the exit is kept
 * from ending the level (B13:$B9CB sent to its RTS) but each time it fires is noted; the playback
 * runs with the exit live.
 *
 *   node --experimental-strip-types src/paths.ts <level 1-12> [--nodes 6000]
 * → out/levels/<nn>-path.json (the run: inputs, the way as points, frames, prisoners in order).
 */
import { mkdirSync, readFileSync, writeFileSync } from 'node:fs';
import { BUTTON, loadState, saveState, type Machine } from './machine.ts';
import { cardState } from './teleport.ts';

export const EXIT_JUMP = 0xb9cb, EXIT_RTS = 0xb9ce;

/** The actions tried from every place: pad inputs held, a frame each. */
const hold = (b: number, n: number) => Array<number>(n).fill(b);
export const ACTIONS: { name: string; seq: number[] }[] = [
  // Small steps to line up with a ladder or a ledge (2 px a frame).
  { name: 'R4', seq: hold(BUTTON.right, 2) },
  { name: 'L4', seq: hold(BUTTON.left, 2) },
  { name: 'R8', seq: hold(BUTTON.right, 4) },
  { name: 'L8', seq: hold(BUTTON.left, 4) },
  { name: 'R16', seq: hold(BUTTON.right, 16) },
  { name: 'L16', seq: hold(BUTTON.left, 16) },
  { name: 'R48', seq: hold(BUTTON.right, 48) },
  { name: 'L48', seq: hold(BUTTON.left, 48) },
  { name: 'jumpR', seq: hold(BUTTON.B | BUTTON.right, 48) },
  { name: 'jumpL', seq: hold(BUTTON.B | BUTTON.left, 48) },
  { name: 'jumpU', seq: hold(BUTTON.B, 48) },
  // Lower jumps: B held shorter (a tap is a hop of 6-12 px, held 48 frames 44 px; moves.ts).
  { name: 'hopR', seq: [...hold(BUTTON.B | BUTTON.right, 12), ...hold(BUTTON.right, 24)] },
  { name: 'hopL', seq: [...hold(BUTTON.B | BUTTON.left, 12), ...hold(BUTTON.left, 24)] },
  { name: 'midR', seq: [...hold(BUTTON.B | BUTTON.right, 24), ...hold(BUTTON.right, 16)] },
  { name: 'midL', seq: [...hold(BUTTON.B | BUTTON.left, 24), ...hold(BUTTON.left, 16)] },
  { name: 'up16', seq: hold(BUTTON.up, 16) },
  { name: 'down16', seq: hold(BUTTON.down, 16) },
  { name: 'up64', seq: hold(BUTTON.up, 64) },
  // Climbing: off a ladder sideways only at some heights in the block (B14:$D386 tests $8F), so
  // short climbs to stop at them, and the diagonals (the climb handler reads all four directions).
  // A door: Up in front of its panel opens it (the user; src/experiments/door-switch.ts: from
  // the panel at (582, 544) the player walks left through the door only after Up). The opening
  // leaves the player where he was, so it is an action together with the walk through.
  { name: 'openL', seq: [...hold(BUTTON.up, 8), ...hold(0, 30), ...hold(BUTTON.left, 48)] },
  { name: 'openR', seq: [...hold(BUTTON.up, 8), ...hold(0, 30), ...hold(BUTTON.right, 48)] },
  // Waiting: a lift carries the player while he stands (src/experiments/fall.ts).
  { name: 'wait32', seq: hold(0, 32) },
  { name: 'wait96', seq: hold(0, 96) },
  { name: 'up4', seq: hold(BUTTON.up, 4) },
  { name: 'down4', seq: hold(BUTTON.down, 4) },
  { name: 'upR', seq: hold(BUTTON.up | BUTTON.right, 16) },
  { name: 'upL', seq: hold(BUTTON.up | BUTTON.left, 16) },
  { name: 'downR', seq: hold(BUTTON.down | BUTTON.right, 16) },
  { name: 'downL', seq: hold(BUTTON.down | BUTTON.left, 16) },
  { name: 'down64', seq: hold(BUTTON.down, 64) },
];

export interface Events { rescued: number[]; exit: boolean }

/** Cheats held every frame (line 241): untouchable, health; with `time`, the timer at 04:00 too. */
export function cheats(m: Machine, time = false) {
  m.ram[0x3c8] = 0x64;
  m.ram[0x74a] = 0x18;
  if (time) { m.ram[0x741] = 0; m.ram[0x742] = 4; m.ram[0x743] = 0; m.ram[0x744] = 0; }
}

export const pos = (m: Machine): [number, number] => [m.ram[0x420] | (m.ram[0x440] << 8), m.ram[0x460] | (m.ram[0x480] << 8)];
/** A place: 8 px across (a ladder wants the player lined up), 8 px down. */
export const keyOf = ([x, y]: [number, number]) => `${x >> 3},${y >> 3}`;

/**
 * Run inputs, then let the player settle: no input until X and Y have not changed for 8 frames, or
 * he has stood ($DE = 0: 1 is falling, 2 landing — src/experiments/fall.ts) for 16 — on a lift he
 * stands while it carries him (up to 150). Returns the frames the settling took, or -1 if he never
 * settled. `watch` is told every frame.
 */
function act(m: Machine, seq: number[], watch: () => void): number {
  for (const b of seq) { m.frame(b); watch(); }
  let still = 0, standing = 0, last = '';
  for (let f = 0; f < 150; f++) {
    m.frame(0);
    watch();
    const p = pos(m).join();
    still = p === last ? still + 1 : 0;
    standing = m.ram[0xde] === 0 ? standing + 1 : 0;
    last = p;
    if (still >= 8 || standing >= 16) return f + 1;
  }
  return -1;
}

export type State = ReturnType<typeof saveState>;
export type Edge = { from: number; to: number; action: number; settle: number; frames: number; rescued: number[]; exit: boolean };
export interface Place { key: string; p: [number, number]; cost: number; state?: State; done: boolean }
export interface Prisoner { i: number; x: number; y: number }

/**
 * Explore from `start` (a light state with the cheats' hook set on `m`): places cheapest first, every
 * action from each. `exit()` says whether the exit fired since it was last cleared. Stops after
 * `maxNodes` expansions, when nothing is left, or — with `untilExit` — at the first edge at the exit.
 * `known`: places (their keys) another search has gone out from already; not gone out from again.
 */
export function explore(m: Machine, start: State, prisoners: Prisoner[], exit: { fired: boolean }, maxNodes: number, untilExit = false, log = true, untilRescue = -1, near?: [number, number], radius = 16, onFrame?: () => void, stopWhen?: () => boolean, known?: Set<string>) {
  const places: Place[] = [];
  const index = new Map<string, number>();
  const edges: Edge[] = [];
  const add = (p: [number, number], cost: number, state: State) => {
    const key = keyOf(p);
    const at = index.get(key);
    if (at !== undefined) {
      if (cost < places[at].cost && !places[at].done) { places[at].cost = cost; places[at].state = state; }
      return at;
    }
    // A place an earlier search already went out from: kept, not gone out from again.
    places.push({ key, p, cost, state, done: known?.has(key) ?? false });
    index.set(key, places.length - 1);
    return places.length - 1;
  };
  loadState(m, start);
  add(pos(m), 0, start);
  const t0 = Date.now();
  let frames = 0;
  for (let expanded = 0; expanded < maxNodes; expanded++) {
    let best = -1;
    for (let i = 0; i < places.length; i++) if (!places[i].done && (best < 0 || places[i].cost < places[best].cost)) best = i;
    if (best < 0) break;
    const from = places[best];
    from.done = true;
    for (let a = 0; a < ACTIONS.length; a++) {
      loadState(m, from.state!);
      const before = prisoners.map((o) => m.ram[0x400 + o.i]);
      exit.fired = false;
      const level = m.ram[0xa8];
      const settle = act(m, ACTIONS[a].seq, onFrame ?? (() => {}));
      frames += ACTIONS[a].seq.length + Math.max(0, settle);
      if (settle < 0 || m.ram[0xa8] !== level) continue;
      const rescued = prisoners.filter((o, k) => before[k] !== 8 && m.ram[0x400 + o.i] === 8).map((o) => o.i);
      const cost = ACTIONS[a].seq.length + settle;
      const to = add(pos(m), from.cost + cost, saveState(m, true));
      if (to === best && !rescued.length && !exit.fired) continue;
      edges.push({ from: best, to, action: a, settle, frames: cost, rescued, exit: exit.fired });
      const [px, py] = pos(m);
      const arrived = near !== undefined && Math.abs(px - near[0]) <= radius && Math.abs(py - near[1]) <= radius;
      if ((untilExit && exit.fired) || (untilRescue >= 0 && rescued.includes(untilRescue)) || arrived || stopWhen?.()) return { places, edges, exitEdge: edges.length - 1 };
    }
    if (from !== places[0]) from.state = undefined;
    if (log && expanded % 500 === 0)
      console.log(`expanded ${expanded}, places ${places.length}, edges ${edges.length}, ${(frames / ((Date.now() - t0) / 1000)).toFixed(0)} frames/s`);
  }
  return { places, edges, exitEdge: -1 };
}

/** Shortest frames from `src` over the edges; `prev[v]` the edge that reaches v. */
export function dijkstra(count: number, edges: Edge[], src: number) {
  const out: number[][] = Array.from({ length: count }, () => []);
  edges.forEach((e, k) => out[e.from].push(k));
  const dist = new Float64Array(count).fill(Infinity), prev = new Int32Array(count).fill(-1), done = new Uint8Array(count);
  dist[src] = 0;
  for (;;) {
    let u = -1;
    for (let i = 0; i < count; i++) if (!done[i] && dist[i] < Infinity && (u < 0 || dist[i] < dist[u])) u = i;
    if (u < 0) break;
    done[u] = 1;
    for (const k of out[u]) {
      const e = edges[k];
      if (dist[u] + e.frames < dist[e.to]) { dist[e.to] = dist[u] + e.frames; prev[e.to] = k; }
    }
  }
  return { dist, prev };
}

export const walk = (prev: Int32Array, edges: Edge[], to: number) => {
  const way: number[] = [];
  for (let v = to; prev[v] >= 0; v = edges[prev[v]].from) way.unshift(prev[v]);
  return way;
};

/** The inputs of a list of edges: each action, then its settling frames with nothing held. */
export const inputsOf = (way: Edge[]) => way.flatMap((e) => [...ACTIONS[e.action].seq, ...Array<number>(e.settle).fill(0)]);

if (import.meta.url === `file://${process.argv[1]}`) {
  const args = process.argv.slice(2);
  const opt = (k: string, d: string) => (args.includes(k) ? args[args.indexOf(k) + 1] : d);
  const n = Number(args[0]) - 1;
  const maxNodes = Number(opt('--nodes', '20000'));
  const nn = String(n + 1).padStart(2, '0');
  const prisoners = (JSON.parse(readFileSync('out/levels/objects.json', 'utf8'))[n + 1] as (Prisoner & { type: number })[]).filter((o) => o.type === 6);

  const { m } = cardState(n);
  m.nes.beforeVblank = () => cheats(m);
  const exit = { fired: false, live: false };
  m.hooks.exec = (pc) => {
    if (pc === EXIT_JUMP && m.bankAt(pc) === 13) { exit.fired = true; if (!exit.live) m.cpu.pc = EXIT_RTS; }
  };
  m.frames(1180 - 900);
  const lead = act(m, [], () => {});
  const start = saveState(m, true);

  // 1. The graph from the start.
  const g = explore(m, start, prisoners, exit, maxNodes);
  const N = g.places.length;
  console.log(`graph: ${N} places, ${g.edges.length} edges`);
  mkdirSync('runs/paths', { recursive: true });
  writeFileSync(`runs/paths/${nn}-graph.json`, JSON.stringify({ places: g.places.map((p) => p.p), edges: g.edges }));
  if (args.includes('--graph-only')) process.exit(0);

  // 2. Each prisoner's rescuing edges (the three cheapest from the start), the order by DP.
  const fromStart = dijkstra(N, g.edges, 0);
  const cand = prisoners.map((o) => g.edges.map((e, k) => ({ e, k })).filter(({ e }) => e.rescued.includes(o.i) && fromStart.dist[e.from] < Infinity)
    .sort((a, b) => fromStart.dist[a.e.from] + a.e.frames - (fromStart.dist[b.e.from] + b.e.frames)).slice(0, 3).map(({ k }) => k));
  const missing = prisoners.filter((_, q) => !cand[q].length).map((o) => o.i);
  if (missing.length) console.log(`prisoners the graph cannot reach: ${missing.join(' ')}`);
  const reach = prisoners.map((_, q) => q).filter((q) => cand[q].length);
  const anchors = new Map<number, ReturnType<typeof dijkstra>>();
  for (const q of reach) for (const k of cand[q]) anchors.set(k, dijkstra(N, g.edges, g.edges[k].to));
  // best[mask][edge] = frames from the start to the end of rescue edge `edge`, having rescued `mask`.
  const P = reach.length;
  const best = new Map<string, { cost: number; prev: string | null }>();
  for (let qi = 0; qi < P; qi++) for (const k of cand[reach[qi]]) {
    const c = fromStart.dist[g.edges[k].from] + g.edges[k].frames;
    best.set(`${1 << qi}:${k}`, { cost: c, prev: null });
  }
  for (let mask = 1; mask < 1 << P; mask++)
    for (let qi = 0; qi < P; qi++) {
      if (!(mask & (1 << qi))) continue;
      for (const k of cand[reach[qi]]) {
        const here = best.get(`${mask}:${k}`);
        if (!here) continue;
        const d = anchors.get(k)!.dist;
        for (let qj = 0; qj < P; qj++) {
          if (mask & (1 << qj)) continue;
          for (const k2 of cand[reach[qj]]) {
            const c = here.cost + d[g.edges[k2].from] + g.edges[k2].frames;
            const key = `${mask | (1 << qj)}:${k2}`;
            if (c < (best.get(key)?.cost ?? Infinity)) best.set(key, { cost: c, prev: `${mask}:${k}` });
          }
        }
      }
    }
  // 3. To the exit: an exit edge in the graph if there is one, from the last rescue's end.
  const full = (1 << P) - 1;
  const exitEdges = g.edges.map((e, k) => ({ e, k })).filter(({ e }) => e.exit).map(({ k }) => k);
  let plan: { cost: number; chain: number[]; exitEdge: number } | null = null;
  for (const [key, v] of best) {
    if (Number(key.split(':')[0]) !== full) continue;
    const k = Number(key.split(':')[1]);
    // With no exit edge in the graph, the exit is searched for after the playback (step 4).
    let c = v.cost, ex = -1;
    const d = anchors.get(k)!.dist;
    for (const x of exitEdges) {
      const cc = v.cost + d[g.edges[x].from] + g.edges[x].frames;
      if (cc < Infinity && (ex < 0 || cc < c)) { c = cc; ex = x; }
    }
    if (!plan || c < plan.cost) {
      const chain: number[] = [];
      for (let at: string | null = key; at; at = best.get(at)!.prev) chain.unshift(Number(at.split(':')[1]));
      plan = { cost: c, chain, exitEdge: ex };
    }
  }
  if (!plan) { console.log('no plan'); process.exit(1); }
  const way: Edge[] = [];
  let at = 0, dPrev = fromStart.prev;
  for (const k of plan.chain) {
    way.push(...walk(dPrev, g.edges, g.edges[k].from).map((x) => g.edges[x]), g.edges[k]);
    at = g.edges[k].to;
    dPrev = anchors.get(k)!.prev;
  }
  if (plan.exitEdge >= 0) way.push(...walk(dPrev, g.edges, g.edges[plan.exitEdge].from).map((x) => g.edges[x]), g.edges[plan.exitEdge]);
  void at;
  let inputs: number[] = inputsOf(way);
  console.log(`plan: prisoners ${plan.chain.map((k) => g.edges[k].rescued.join('+')).join(' → ')}, ${plan.exitEdge >= 0 ? 'exit in the graph' : 'exit to be searched'}, ${plan.cost} frames planned`);

  // 4. Carried out leg by leg from the game's real state: the order is the plan's (the graph's
  //    costs, from the start's history), but each leg — to the next prisoner, then to the exit —
  //    is searched again from where the run really stands, so its inputs do what they did in the
  //    search (stitched from the graph, the legs diverged: doors animate, enemies move).
  const play = (seq: number[]) => {
    loadState(m, start);
    exit.fired = false; exit.live = true;
    const trail: [number, number][] = [];
    let f = 0;
    for (const b of seq) { m.frame(b); f++; if (f % 4 === 0) trail.push(pos(m)); if (exit.fired) break; }
    return { trail, frames: f, rescued: prisoners.filter((o) => m.ram[0x400 + o.i] === 8).map((o) => o.i), left: m.ram[0x747], exit: exit.fired };
  };
  const order = plan.chain.map((k) => g.edges[k].rescued[0]);
  let here = start;
  inputs = [];
  const left = [...order];
  const legLog: string[] = [];
  /** The next leg: to the first prisoner of `left` the search reaches from `here` (the plan's order
   *  first; another if that one cannot be reached from here), or to the exit when none is left. */
  for (;;) {
    let done = false;
    const targets = left.length ? left : [-1];
    for (const target of targets) {
      loadState(m, here);
      exit.live = false;
      const leg = explore(m, here, prisoners, exit, maxNodes, target < 0, false, target);
      const what = target < 0 ? 'the exit' : `prisoner ${target}`;
      if (leg.exitEdge < 0) {
        legLog.push(`${what}: not reached (${leg.places.length} places searched)`);
        writeFileSync(`runs/paths/${nn}-stuck-${target}.json`, JSON.stringify(leg.places.map((p) => p.p)));
        continue;
      }
      const d = dijkstra(leg.places.length, leg.edges, 0);
      const end = leg.edges[leg.exitEdge];
      const way = [...walk(d.prev, leg.edges, end.from).map((x) => leg.edges[x]), end];
      const legInputs = inputsOf(way);
      inputs.push(...legInputs);
      // The next leg starts where these inputs leave the game, played from this leg's start.
      loadState(m, here);
      for (const b of legInputs) m.frame(b);
      here = saveState(m, true);
      legLog.push(`${what}: ${legInputs.length} frames (${leg.places.length} places searched)`);
      for (const o of prisoners) { const k = left.indexOf(o.i); if (k >= 0 && m.ram[0x400 + o.i] === 8) left.splice(k, 1); }
      done = target < 0 ? false : true;
      if (target < 0) left.push(-2); // the exit reached: stop
      break;
    }
    console.log(legLog[legLog.length - 1]);
    if (left.includes(-2) || !done) break;
  }
  const r = play(inputs);
  console.log(`playback: ${r.frames} frames, rescued ${r.rescued.length}/${prisoners.length} (${r.rescued.join(' ')}), prisoners left $0747 = ${r.left}, exit ${r.exit ? 'reached' : 'NOT reached'}`);
  writeFileSync(`out/levels/${nn}-path.json`, JSON.stringify({
    level: n + 1, cheats: ['$03C8 = $64 (untouchable)', '$074A = $18 (health)'], startFrame: 1180 + lead,
    frames: r.frames, seconds: +(r.frames / 60.0988).toFixed(1), rescued: r.rescued, prisoners: prisoners.map((o) => o.i), exit: r.exit,
    order: plan.chain.map((k) => g.edges[k].rescued), trail: r.trail, inputs: inputs.join(','),
    graph: { places: N, edges: g.edges.length },
  }) + '\n');
  mkdirSync('runs/paths', { recursive: true });
}
