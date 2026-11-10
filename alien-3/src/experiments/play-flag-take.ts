// Over Randil's take: when is $A3/$A4 = $E870 (the status bar's IRQ handler, set by the NMI in play,
// B15:$ED0F)? Its runs of frames, with $A8 and the player's position at their ends.
import { parseTake } from '../take.ts';
const take = parseTake('fceux/tas_take.play.txt');
const ram = new Uint8Array(0x800);
let on = false, from = 0;
const out: string[] = [];
for (let f = 0; f < take.buttons.length; f++) {
  for (const c of take.changes[f]) ram[c >> 8] = c & 255;
  const now = ram[0xa3] === 0x70 && ram[0xa4] === 0xe8;
  if (now !== on) { out.push(`${on ? 'PLAY' : 'off '} ${from}-${f - 1} (${f - from} frames), $A8 ${ram[0xa8]}`); on = now; from = f; }
}
out.push(`${on ? 'PLAY' : 'off '} ${from}-${take.buttons.length - 1}`);
console.log(out.join('\n'));
