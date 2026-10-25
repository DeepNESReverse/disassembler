// From the take itself: RAM cells whose values between levels (tally + card: frames 6806-7467,
// 16604-17268) and in play (7600-16500, 17400-17800) never meet, in both pairs of windows.
import { parseTake } from '../take.ts';
const take = parseTake('fceux/tas_take.play.txt');
const ram = new Uint8Array(0x800);
const sets = [[6806, 7467], [7600, 16500], [16604, 17268], [17400, 17800]].map(() => Array.from({ length: 0x800 }, () => new Set<number>()));
const wins = [[6806, 7467], [7600, 16500], [16604, 17268], [17400, 17800]];
for (let f = 0; f < 17801; f++) {
  for (const c of take.changes[f]) ram[c >> 8] = c & 255;
  wins.forEach(([a, b], w) => { if (f >= a && f <= b) for (let i = 0; i < 0x800; i++) sets[w][i].add(ram[i]); });
}
const apart = (x: Set<number>, y: Set<number>) => [...x].every((v) => !y.has(v));
for (let i = 0; i < 0x800; i++) {
  if (i >= 0x100 && i < 0x200) continue;
  if (apart(sets[0][i], sets[1][i]) && apart(sets[2][i], sets[3][i]))
    console.log(`$${i.toString(16)}: between ${[...sets[0][i]].slice(0, 6)} / ${[...sets[2][i]].slice(0, 6)}; play ${[...sets[1][i]].slice(0, 6)} / ${[...sets[3][i]].slice(0, 6)}`);
}
