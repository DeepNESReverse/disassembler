// The player's start = object 0 of the header's table (B15:$EA86 copies object X/Y to $0420.. for
// every slot, the player being slot 0)? Every level: the table's object 0 against the player's X/Y
// in RAM on the level's first frame (1180).
import { readFileSync } from 'node:fs';
import { cardState } from '../teleport.ts';
const objects = JSON.parse(readFileSync('out/levels/objects.json', 'utf8'));
for (let n = 0; n < 12; n++) {
  const { m } = cardState(n);
  m.frames(1180 - 900);
  const r = m.ram;
  const o = objects[n + 1].find((x: { i: number }) => x.i === 0);
  const px = r[0x420] | (r[0x440] << 8), py = r[0x460] | (r[0x480] << 8);
  console.log(`level ${n + 1}: table object 0 (${o.x}, ${o.y}) type ${o.type}; player in RAM (${px}, ${py}) ${o.x === px && o.y === py ? 'same' : 'DIFFERENT'}`);
}
