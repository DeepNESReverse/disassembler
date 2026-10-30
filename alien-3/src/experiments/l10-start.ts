// Level 10 at its start: the player's object fields (slot 0, $0400-$07E0 by $20) in Randil's take,
// 120 frames into the level, against the search's start (the card, then 280 frames as visible.ts).
import { cardState } from '../teleport.ts';
import { cheats } from '../paths.ts';
import { parseTake } from '../take.ts';
const first = Number(process.argv[2]);
const take = parseTake('fceux/tas_take.play.txt');
const theirs = new Uint8Array(0x800);
for (let k = 0; k < first + 120; k++) for (const c of take.changes[k]) theirs[c >> 8] = c & 255;
const { m } = cardState(9);
m.nes.beforeVblank = () => cheats(m, true);
m.frames(1180 - 900);
const fields = Array.from({ length: 32 }, (_, k) => 0x400 + k * 0x20);
console.log(' theirs', fields.map((a) => theirs[a].toString(16).padStart(2, '0')).join(' '));
console.log(' ours  ', fields.map((a) => m.ram[a].toString(16).padStart(2, '0')).join(' '));
console.log(' fields', fields.map((a) => (a >> 4).toString(16).slice(-2)).join(' '));
