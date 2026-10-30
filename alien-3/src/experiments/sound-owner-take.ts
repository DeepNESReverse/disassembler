// Randil's TAS: each sound-chip write (fceux/movie_sound.txt) against the stream its channel's slot
// held at the end of that frame (fceux/tas_take.play.txt, $03D8+X = stream × 2; slot X = pulse 1,
// pulse 2, triangle, noise). Counted: writes per channel under silence (0), music (1-$2F), effect.
import { readFileSync } from 'node:fs';
import { parseTake } from '../take.ts';
const take = parseTake('fceux/tas_take.play.txt');
const sound: number[][] = [];
for (const line of readFileSync('fceux/movie_sound.txt', 'utf8').split('\n')) {
  if (line.startsWith('f ')) { const f = Number(line.slice(2)); while (sound.length < f) sound.push([]); }
  else if (line.startsWith('a ')) { const b = line.slice(2); for (let i = 0; i + 6 <= b.length; i += 6) sound[sound.length - 1].push(parseInt(b.slice(i, i + 4), 16)); }
}
const ram = new Uint8Array(0x800);
const NAMES = ['pulse1', 'pulse2', 'triangle', 'noise', 'dmc', 'other'];
const count = NAMES.map(() => ({ silence: 0, music: 0, effect: 0 }));
for (let k = 0; k < Math.min(sound.length, take.changes.length); k++) {
  for (const c of take.changes[k]) ram[c >> 8] = c & 255;
  for (const a of sound[k]) {
    const g = Math.min((a - 0x4000) >> 2, 5);
    if (g > 3) { count[g].silence++; continue; }
    const s = ram[0x3d8 + g] >> 1;
    count[g][s === 0 ? 'silence' : s < 0x30 ? 'music' : 'effect']++;
  }
}
console.log(`${sound.length} sound frames, ${take.changes.length} take frames`);
NAMES.forEach((n, g) => console.log(n.padEnd(9), JSON.stringify(count[g])));
