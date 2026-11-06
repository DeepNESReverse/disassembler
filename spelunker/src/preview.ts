/**
 * The maps chapter's preview for xrom.dev: the run over the cave as the page shows it — the core's
 * own picture (its whole screen: no split) at the camera take-pack.ts found — frame by frame for
 * src/preview.py to lay over the map.
 *   node --experimental-strip-types src/preview.ts <first frame> <frames> <step> <out.bin>
 * Frames are the run's (0 = the movie's frame 1). out.bin: per frame i16 camera x, i16 camera y,
 * then 256 × 240 RGB.
 */
import { readFileSync, writeFileSync } from 'node:fs';
import { gunzipSync } from 'node:zlib';
import { Core, parseRom } from '../../nes-explorer/src/core/core.ts';
import { NES_RGB } from '../../xrom-libs/nes/src/palette.ts';
import { romFile } from './rom.ts';
import { readMovie } from './movie.ts';

const [first, count, step, outPath] = process.argv.slice(2);
const start = Number(first), end = start + Number(count);
const take = gunzipSync(readFileSync('out/cave/take.bin.gz'));
const size = take.readUInt16LE(8);
const s = new Uint8Array(size);
const core = new Core(parseRom(romFile()));
const c = core as unknown as { port2: boolean; render: boolean; screen: Uint8Array };
c.port2 = true;
c.render = true;
const movie = readMovie();
const out: Buffer[] = [];
let o = 10;
for (let f = 0; f < end; f++) {
  const n = take.readUInt16LE(o);
  o += 2;
  for (let k = 0; k < n; k++, o += 3) s[take.readUInt16LE(o)] = take[o + 2];
  o += 2 + 2 * take.readUInt16LE(o);
  core.buttons = movie[f].buttons;
  core.buttons2 = movie[f].buttons2;
  core.runFrame();
  if (f < start || (f - start) % Number(step)) continue;
  const px = Buffer.alloc(4 + 256 * 240 * 3);
  px.writeInt16LE(s[0] | (s[1] << 8), 0);
  px.writeInt16LE(s[2] | (s[3] << 8), 2);
  for (let i = 0; i < 256 * 240; i++) {
    // The 8 pixels the game hides on the left are the map's, as on the page.
    const hidden = (i & 255) < 8;
    const col = hidden ? -1 : NES_RGB[c.screen[i] & 0x3f];
    px[4 + i * 3] = hidden ? 1 : (col >> 16) & 255;
    px[5 + i * 3] = hidden ? 2 : (col >> 8) & 255;
    px[6 + i * 3] = hidden ? 3 : col & 255;
  }
  out.push(px);
}
writeFileSync(outPath, Buffer.concat(out));
console.log(`${out.length} frames from ${start}`);
