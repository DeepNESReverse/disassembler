// Level 10's climb at X 868-947: the player's object (slot 0, every $20-stride field $0400-$07E0)
// in Randil's take at frames 58150-58300 against ours replaying his pads from the teleport.
import { Level } from '../level.ts';
import { loadState } from '../machine.ts';
import { cardState, teleportOnBuild } from '../teleport.ts';
import { cheats } from '../paths.ts';
import { parseTake } from '../take.ts';
const take = parseTake('fceux/tas_take.play.txt');
const theirs = new Uint8Array(0x800);
const at: Record<number, Uint8Array> = {};
for (let k = 0; k < 58300; k++) { for (const c of take.changes[k]) theirs[c >> 8] = c & 255; if ([58156, 58200, 58230, 58260].includes(k + 1)) at[k + 1] = theirs.slice(); }
const { m, state } = cardState(9);
loadState(m, state);
teleportOnBuild(m, new Level(m.cart.prg, 9), 736, 240, 868, 416);
m.nes.beforeVblank = () => cheats(m, true);
m.frames(1180 - 900);
const ours: Record<number, Uint8Array> = {};
for (let f = 58157; f <= 58260; f++) { m.frame(take.buttons[f - 1]); if (at[f]) ours[f] = m.ram.slice(); }
ours[58156] = ours[58200]; // (ours starts at 58157)
const fields = Array.from({ length: 32 }, (_, k) => 0x400 + k * 0x20);
for (const f of [58200, 58230, 58260]) {
  console.log(`frame ${f}`);
  console.log(' theirs', fields.map((a) => at[f][a].toString(16).padStart(2, '0')).join(' '));
  console.log(' ours  ', fields.map((a) => ours[f][a].toString(16).padStart(2, '0')).join(' '));
}
console.log(' fields', fields.map((a) => (a >> 4).toString(16).slice(-2)).join(' '));
