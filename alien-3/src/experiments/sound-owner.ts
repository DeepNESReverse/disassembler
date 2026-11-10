// Which sound-chip channel does the driver's slot X (0-3, stream number ×2 in $03D8+X) play on, and
// does $03D8+X hold the stream while it plays? Level 1 with shots: per frame, the four slots'
// streams and the register groups written ($4000 pulse 1, $4004 pulse 2, $4008 triangle,
// $400C noise, $4010 DMC); counted per slot holding an effect (stream $30 and up).
import { cardState } from '../teleport.ts';
import { BUTTON } from '../machine.ts';
const { m } = cardState(0);
const NAMES = ['pulse1', 'pulse2', 'triangle', 'noise', 'dmc'];
let groups = new Set<number>();
m.hooks.write = (a) => { if (a >= 0x4000 && a <= 0x4013) groups.add((a - 0x4000) >> 2); };
const tally = [0, 1, 2, 3].map(() => new Map<string, number>());
const frames = [0, 0, 0, 0];
const streams = new Set<string>();
for (let f = 0; f < 3000; f++) {
  groups = new Set();
  m.frame(f % 120 < 3 ? BUTTON.A : f % 600 < 300 ? BUTTON.RIGHT : BUTTON.LEFT);
  for (let x = 0; x < 4; x++) {
    const s = m.ram[0x3d8 + x];
    streams.add(`${x}:${s.toString(16)}`);
    if (s / 2 >= 0x30) { frames[x]++; for (const g of groups) tally[x].set(NAMES[g], (tally[x].get(NAMES[g]) ?? 0) + 1); }
  }
}
console.log('slot:stream×2 seen:', [...streams].sort().join(' '));
tally.forEach((t, x) => console.log(`slot ${x}: ${frames[x]} frames with an effect; written then:`, [...t].map(([k, n]) => `${k} ${n}`).join(', ')));
