// Level 10's climb: our machine in level 10, its whole RAM replaced once by Randil's at frame
// <from> (fceux/tas_take.play.txt), then his pads — does our NES climb as his did?
import { cardState } from '../teleport.ts';
import { pos } from '../paths.ts';
import { parseTake } from '../take.ts';
const from = Number(process.argv[2] ?? 58130), to = Number(process.argv[3] ?? 58520);
const take = parseTake('fceux/tas_take.play.txt');
const theirs = new Uint8Array(0x800);
const trail = new Map<number, string>();
for (let k = 0; k < to; k++) {
  for (const c of take.changes[k]) theirs[c >> 8] = c & 255;
  if (k + 1 === from) var start = theirs.slice();
  const f = k + 1;
  if (f >= from && f % 40 === 0) trail.set(f, `${theirs[0x420] | (theirs[0x440] << 8)},${theirs[0x460] | (theirs[0x480] << 8)}`);
}
const { m } = cardState(9);
m.frames(1180 - 900);
m.ram.set(start!);
const out: string[] = [];
for (let f = from + 1; f <= to; f++) { m.frame(take.buttons[f - 1]); if (f % 40 === 0) out.push(`${f}: ours ${pos(m)} / his ${trail.get(f)}`); }
console.log(out.join('\n'));
