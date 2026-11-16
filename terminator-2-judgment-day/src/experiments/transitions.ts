/**
 * The way between an area's maps: around every header load of a stretch of the run, the player's
 * place ($0427/$0428, $0447/$0448) and the camera ($C4-$C7) a few frames before and after.
 *   node --experimental-strip-types --no-warnings src/experiments/transitions.ts <from> <to>
 */
import { Run } from '../run.ts';

const [from, to] = process.argv.slice(2).map(Number);
const run = new Run();
const m = run.m;
let loaded = -1;
const loads: [number, number][] = [];
m.hooks.exec = (p) => {
  if (p === 0xa3e0 && m.prgOffset(p) === 0x63e0) {
    loaded = m.cpu.x >> 1;
    loads.push([run.frame + 1, loaded]);
  }
};
const at = () => {
  const r = m.ram;
  return `h${loaded} player ${r[0x427] | (r[0x428] << 8)},${r[0x447] | (r[0x448] << 8)} cam ${r[0xc4] | (r[0xc5] << 8)},${r[0xc6] | (r[0xc7] << 8)} $D1 ${r[0xd1]}`;
};
const log = new Map<number, string>();
for (let f = from; f <= to; f++) {
  run.to(f);
  log.set(f, at());
}
for (const [f, h] of loads) {
  if (f < from + 40 || f > to - 120) continue;
  console.log(`load of header ${h} at ${f}`);
  for (const d of [-40, -20, -5, -1, 0, 1, 20, 60, 100]) console.log(`   ${d >= 0 ? '+' : ''}${d}: ${log.get(f + d)}`);
}
