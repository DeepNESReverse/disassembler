// The capture's course: every frame the area cell $D1 changes in FCEUX's RAM, and the lag frames.
//   node --experimental-strip-types --no-warnings src/experiments/capture-areas.ts
import { readCapture } from '../capture.ts';
let last = -1, lag = 0, n = 0;
for (const c of readCapture()) {
  n++;
  if (c.lagged) lag++;
  if (c.ram[0xd1] !== last) console.log(`frame ${c.frame}: $D1 = ${c.ram[0xd1]}`);
  last = c.ram[0xd1];
}
console.log(`${n} frames, ${lag} lagged`);
