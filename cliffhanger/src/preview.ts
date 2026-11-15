/**
 * The run's card on xrom.dev: a short clip of the TAS over the map → out/art/run.mp4 and run.png
 * (its first frame, the poster). The game's frame (the field, 256 × 176, its hidden left columns
 * clear) is laid on the section's map where the packed run puts it (take.bin.gz, STATUS §9), in a
 * window of 480 × 272 map pixels easing after it, ×2 with the pixels kept sharp, 30 frames a second.
 *   node --experimental-strip-types --no-warnings src/preview.ts [section] [from] [frames]
 */
import { readFileSync, writeFileSync } from 'node:fs';
import { gunzipSync } from 'node:zlib';
import { spawn } from 'node:child_process';
import { encodePng } from '../libs/nes/src/png.ts';
import { TRANSPARENT } from '../libs/nes/src/ppu.ts';
import { Run } from './run.ts';
import { readPng } from './png-read.ts';

const [sec = 0, from = 1150, count = 720] = process.argv.slice(2).map(Number);
const VW = 480, VH = 272, FW = 256, FH = 176;

// The packed run's camera per frame.
const take = gunzipSync(readFileSync('out/levels/take.bin.gz'));
const frames = take.readUInt32LE(4), size = take.readUInt16LE(8);
const s = new Uint8Array(size);
const cam = new Map<number, { x: number; y: number; shown: boolean }>();
const i16 = (lo: number, hi: number) => (((hi << 8) | lo) << 16) >> 16;
for (let f = 0, o = 10; f <= frames; f++) {
  const n = take.readUInt16LE(o);
  o += 2;
  for (let k = 0; k < n; k++, o += 3) s[take.readUInt16LE(o)] = take[o + 2];
  o += 2 + 2 * take.readUInt16LE(o);
  if (f >= from && f < from + count) cam.set(f, { x: i16(s[2], s[3]), y: i16(s[4], s[5]), shown: !!s[1] && s[0] === sec });
}

const map = readPng(`out/levels/${String(sec).padStart(2, '0')}.png`);
const run = new Run();
run.to(from - 1);
const ff = spawn('ffmpeg', ['-y', '-loglevel', 'error', '-f', 'rawvideo', '-pix_fmt', 'rgb24', '-s', `${VW}x${VH}`, '-r', '30', '-i', '-',
  '-vf', `scale=${VW * 2}:${VH * 2}:flags=neighbor`, '-c:v', 'libx264', '-pix_fmt', 'yuv420p', '-crf', '20', '-movflags', '+faststart', 'out/art/run.mp4'], { stdio: ['pipe', 'inherit', 'inherit'] });
let vx = NaN, vy = NaN;
let first = true;
for (let f = from; f < from + count; f++) {
  run.to(f);
  if ((f - from) % 2) continue;
  const c = cam.get(f)!;
  // The window eases after the frame's middle, inside the map.
  const tx = Math.max(0, Math.min(map.w - VW, c.x + FW / 2 - VW / 2));
  const ty = Math.max(0, Math.min(map.h - VH, c.y + FH / 2 - VH / 2));
  if (Number.isNaN(vx)) (vx = tx), (vy = ty);
  vx += (tx - vx) * 0.15;
  vy += (ty - vy) * 0.15;
  const ox = Math.round(vx), oy = Math.round(vy);
  const rgb = Buffer.alloc(VW * VH * 3);
  const px = new Uint32Array(VW * VH);
  for (let y = 0; y < VH; y++) for (let x = 0; x < VW; x++) px[y * VW + x] = map.px[(oy + y) * map.w + ox + x];
  if (c.shown) {
    const pix = run.m.ppu.pixels;
    for (let y = 0; y < FH; y++) {
      for (let x = 8; x < FW; x++) {
        const X = c.x - ox + x, Y = c.y - oy + y;
        if (X < 0 || Y < 0 || X >= VW || Y >= VH) continue;
        px[Y * VW + X] = pix[y * FW + x] & 0xffffff;
      }
    }
    // A thin light edge round the game's frame, as on the page.
    for (let x = 8; x < FW; x++) for (const y of [0, FH - 1]) { const X = c.x - ox + x, Y = c.y - oy + y; if (X >= 0 && Y >= 0 && X < VW && Y < VH) px[Y * VW + X] = blend(px[Y * VW + X]); }
    for (let y = 0; y < FH; y++) for (const x of [8, FW - 1]) { const X = c.x - ox + x, Y = c.y - oy + y; if (X >= 0 && Y >= 0 && X < VW && Y < VH) px[Y * VW + X] = blend(px[Y * VW + X]); }
  }
  for (let i = 0; i < VW * VH; i++) rgb[3 * i] = px[i] >> 16, (rgb[3 * i + 1] = (px[i] >> 8) & 255), (rgb[3 * i + 2] = px[i] & 255);
  if (first) writeFileSync('out/art/run.png', encodePng(px, VW, VH, 2)), (first = false);
  ff.stdin.write(rgb);
}
ff.stdin.end();
await new Promise((ok) => ff.on('close', ok));
console.log('out/art/run.mp4, run.png');

function blend(p: number): number {
  if (p === TRANSPARENT) return 0xffffff;
  const r = (p >> 16) & 255, g = (p >> 8) & 255, b = p & 255;
  return (((r + 255) >> 1) << 16) | (((g + 255) >> 1) << 8) | ((b + 255) >> 1);
}
