/**
 * The maps chapter's preview for xrom.dev: the run over a stage's map, as the page shows it — the
 * game's field inside the camera, here the core's own picture (lines 44-239 of its screen) — written
 * frame by frame for src/preview.py to lay over the map.
 *   node --experimental-strip-types src/preview.ts <first frame> <frames> <step> <out.bin>
 * Frames are the run's (0 = the movie's frame 1). out.bin: per frame i16 camera X, then 256 × 196 RGB.
 */
import { writeFileSync } from 'node:fs';
import { replay, cameraOf, FIELD_TOP } from './replay.ts';
import { NES_RGB } from '../libs/nes/src/palette.ts';

const [first, count, step, outPath] = process.argv.slice(2);
const start = Number(first), end = start + Number(count);
const r = replay();
const screen = (r.core as unknown as { screen: Uint8Array }).screen;
const H = 240 - FIELD_TOP;
const out: Buffer[] = [];
let prevCam = 0;
for (let f = 0; f < end; f++) {
  r.core.buttons = r.movie[f].buttons;
  r.core.runFrame();
  const cam = prevCam;
  prevCam = cameraOf(r.core.ram);
  if (f < start || (f - start) % Number(step)) continue;
  const px = Buffer.alloc(2 + 256 * H * 3);
  px.writeInt16LE(cam, 0);
  for (let i = 0; i < 256 * H; i++) {
    const c = NES_RGB[screen[FIELD_TOP * 256 + i] & 0x3f];
    px[2 + i * 3] = (c >> 16) & 255;
    px[3 + i * 3] = (c >> 8) & 255;
    px[4 + i * 3] = c & 255;
  }
  out.push(px);
}
writeFileSync(outPath, Buffer.concat(out));
console.log(`${out.length} frames from ${start}`);
