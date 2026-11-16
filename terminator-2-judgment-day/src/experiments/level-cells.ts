/**
 * RAM cells that hold one value through each level's play and differ between levels — a level's
 * settings (the weapon, …). Per level (frames of the capture: level 1 2 000-6 700, the hospital
 * 13 000-17 000, Cyberdyne 19 000-33 000, the steel mill 35 500-42 000) the cells constant there.
 *   node --experimental-strip-types --no-warnings src/experiments/level-cells.ts
 */
import { readCapture } from '../capture.ts';

const STRETCHES: [string, number, number][] = [['truck stop', 2000, 6700], ['bike', 9400, 12300], ['hospital', 13000, 17000], ['cyberdyne', 19000, 33000], ['steel mill', 35500, 42000]];
const value = STRETCHES.map(() => new Int16Array(0x800).fill(-1));
for (const c of readCapture()) {
  STRETCHES.forEach(([, a, b], i) => {
    if (c.frame < a || c.frame > b) return;
    for (let x = 0; x < 0x800; x++) {
      if (value[i][x] === -1) value[i][x] = c.ram[x];
      else if (value[i][x] !== c.ram[x]) value[i][x] = -2;
    }
  });
}
for (let x = 0x10; x < 0x800; x++) {
  if ((x >= 0x100 && x < 0x300)) continue;
  const vs = value.map((v) => v[x]);
  if (vs.some((v) => v < 0)) continue;
  if (new Set(vs).size < 2) continue;
  console.log(`$${x.toString(16).padStart(4, '0')}: ${STRETCHES.map(([n], i) => `${n} ${vs[i].toString(16)}`).join(', ')}`);
}
