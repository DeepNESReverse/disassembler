/**
 * The sound-chip writes of the TAS on this NES against the FCEUX capture's, frame by frame, and
 * the instructions that make them.
 *   node --experimental-strip-types --no-warnings src/experiments/apu-writers.ts [until]
 */
import { Run } from '../run.ts';
import { readCapture } from '../capture.ts';

const until = Number(process.argv[2] ?? 24900);
const run = new Run();
const m = run.m;
let pc = 0;
m.hooks.exec = (p) => {
  pc = p;
};
const ours = new Map<number, [number, number][]>();
const sites = new Map<string, number>();
m.hooks.write = (a, v) => {
  if (a < 0x4000 || a > 0x4017 || a === 0x4014 || a === 0x4016) return;
  // A write belongs to the movie frame that ends at the next line 241: run.frame + 1, before and
  // after the line-241 step alike (that step is what moves run.frame on).
  const k = run.frame + 1;
  if (!ours.has(k)) ours.set(k, []);
  ours.get(k)!.push([a, v]);
  const site = `${pc.toString(16)} (prg ${m.prgOffset(pc).toString(16)})`;
  sites.set(site, (sites.get(site) ?? 0) + 1);
};
run.to(until);
let same = 0;
let differ = 0;
const firsts: string[] = [];
for (const c of readCapture()) {
  if (c.frame > until) break;
  const a = JSON.stringify(c.apu);
  for (const shift of [0, 1, -1]) {
    const b = JSON.stringify(ours.get(c.frame + shift) ?? []);
    if (a === b) {
      if (shift === 0) same++;
      else if (firsts.length < 5) firsts.push(`frame ${c.frame} matches ours at ${shift}`);
      break;
    }
    if (shift === -1) {
      differ++;
      if (firsts.length < 5) firsts.push(`frame ${c.frame}: fceux ${a.slice(0, 80)} ours ${JSON.stringify(ours.get(c.frame) ?? []).slice(0, 80)}`);
    }
  }
}
console.log(`frames with the same writes ${same}, differing ${differ}`);
for (const f of firsts) console.log(`  ${f}`);
for (const [s, n] of [...sites].sort((a, b) => b[1] - a[1])) console.log(`  ${n} by ${s}`);
