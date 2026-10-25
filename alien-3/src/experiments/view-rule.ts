/**
 * The camera's rule (STATUS §11, B15:$FAEB; the axis changes only on the grid): across only on a
 * page top (Y a multiple of 240), up and down only on an odd 256-px band's start; the field is
 * 256 × 176. So in the even bands the bottom 64 px of every page can never be on screen.
 * Checked against a no-clip flight (`noclip.ts <n> --dump-seen`): no cell it saw may lie there.
 */
import { readFileSync } from 'node:fs';
const nn = String(process.argv[2] ?? '3').padStart(2, '0');
const { width, height, seen } = JSON.parse(readFileSync(`runs/noclip-seen-${nn}.json`, 'utf8'));
let hidden = 0, hiddenSeen = 0, visible = 0, visibleSeen = 0;
for (let ty = 0; ty < height; ty++)
  for (let tx = 0; tx < width; tx++) {
    const x = tx * 8, y = ty * 8;
    const band = Math.floor(x / 256);
    const never = band % 2 === 0 && y % 240 >= 176;
    const s = seen[ty * width + tx] === '1';
    if (never) { hidden++; if (s) hiddenSeen++; } else { visible++; if (s) visibleSeen++; }
  }
console.log(`level ${Number(nn)}: cells the rule says never shown ${hidden}, of them seen in the flight ${hiddenSeen}; others ${visible}, seen ${visibleSeen}`);
