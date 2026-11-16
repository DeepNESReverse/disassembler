/**
 * A short clip for a Reddit post: klmz's run over the whole mountain, fast, so that it is plain the
 * map is the whole game → <out>.mp4 (and a GIF beside it, made by ffmpeg).
 *   node --experimental-strip-types --no-warnings src/reddit-clip.ts <out without extension>
 *
 * Close first — the game's own frame where the camera is, laid on the map (as the maps page has it)
 * — then the view draws back while the run speeds up, and climbs the mountain with it, the route
 * drawn behind; at the end the view draws back to the whole mountain. The world is the maps page's
 * (world.json: every section's map at its place; the house and its inside left out, the run's
 * frames there are skipped, as are the story screens and each section's standing start but the
 * first). The game's frames are this NES's replay of the movie (run.ts), placed by the packed run's
 * camera (take.bin.gz).
 */
import { readFileSync } from 'node:fs';
import { gunzipSync } from 'node:zlib';
import { spawn, execFileSync } from 'node:child_process';
import { Run } from './run.ts';
import { readPng } from './png-read.ts';

const out = process.argv[2] ?? 'out/art/reddit-clip';
const OW = 1280, OH = 720, FPS = 30;
const FW = 256, FH = 176;

// ---------------------------------------------------------------- the world, and smaller copies of it
const WORLD = JSON.parse(readFileSync('out/levels/world.json', 'utf8'));
const HOUSE: number = WORLD.house.inside.section;
const WW: number = WORLD.w, WH: number = WORLD.h;
const BACK = 0x101018;
const world = new Uint32Array(WW * WH).fill(BACK);
const origin = new Map<number, { x: number; y: number }>();
for (const p of WORLD.pieces) {
  origin.set(p.section, { x: p.x, y: p.y });
  const map = readPng(`out/levels/${String(p.section).padStart(2, '0')}.png`);
  for (let y = 0; y < map.h; y++) {
    const Y = p.y + y;
    if (Y < 0 || Y >= WH) continue;
    for (let x = 0; x < map.w; x++) {
      const X = p.x + x;
      if (X >= 0 && X < WW) world[Y * WW + X] = map.px[y * map.w + x];
    }
  }
}
/** Halved again and again (each pixel the average of four), for the view drawn back. */
const levels: { w: number; h: number; px: Uint32Array }[] = [{ w: WW, h: WH, px: world }];
while (levels[levels.length - 1].w > OW / 2) {
  const a = levels[levels.length - 1];
  const w = a.w >> 1, h = a.h >> 1, px = new Uint32Array(w * h);
  for (let y = 0; y < h; y++) {
    for (let x = 0; x < w; x++) {
      let r = 0, g = 0, b = 0;
      for (const [dx, dy] of [[0, 0], [1, 0], [0, 1], [1, 1]]) {
        const c = a.px[(2 * y + dy) * a.w + 2 * x + dx];
        r += (c >> 16) & 255, g += (c >> 8) & 255, b += c & 255;
      }
      px[y * w + x] = ((r >> 2) << 16) | ((g >> 2) << 8) | (b >> 2);
    }
  }
  levels.push({ w, h, px });
}

// ---------------------------------------------------------------- the run's frames kept, and their place
const take = gunzipSync(readFileSync('out/levels/take.bin.gz'));
const total = take.readUInt32LE(4);
const st = new Uint8Array(take.readUInt16LE(8));
const i16 = (lo: number, hi: number) => (((hi << 8) | lo) << 16) >> 16;
const starts = JSON.parse(readFileSync('out/levels/starts.json', 'utf8')) as Record<string, { placed: number; moves: number }>;
const kept: { f: number; x: number; y: number }[] = [];
for (let f = 0, o = 10; f <= total; f++) {
  const n = take.readUInt16LE(o);
  o += 2;
  for (let k = 0; k < n; k++, o += 3) st[take.readUInt16LE(o)] = take[o + 2];
  o += 2 + 2 * take.readUInt16LE(o);
  const s = st[0];
  if (!st[1] || s === HOUSE || !origin.has(s)) continue;
  const go = starts[s];
  if (go && f >= go.placed && f < go.moves) continue;
  const at = origin.get(s)!;
  kept.push({ f, x: at.x + i16(st[2], st[3]), y: at.y + i16(st[4], st[5]) });
}
// The route on the world (tas-world.json's level 0), its points' frames rising.
const route = (JSON.parse(readFileSync('out/levels/tas-world.json', 'utf8')).levels['0'].segments as number[][][]).filter((g) => g.length > 1);

// ---------------------------------------------------------------- the clip's time line
// 0-3 s: close, the run at ×2, drawing back; then the rest of the run in ~10 s; then 2.5 s to the whole mountain.
const T1 = 3 * FPS, T2 = T1 + 10 * FPS, T3 = T2 + 2.5 * FPS, T4 = T3 + 1.5 * FPS;
const ease = (t: number) => (t < 0 ? 0 : t > 1 ? 1 : t * t * (3 - 2 * t));
const CLOSE = 2, FAR = 0.7, WHOLE = Math.min(OW / WW, OH / WH);
const SLOW = 2 * (T1 / FPS) * 60;
function at(i: number) {
  if (i < T1) return { k: Math.min(kept.length - 1, Math.round((i / T1) * SLOW)), z: Math.exp(Math.log(CLOSE) + (Math.log(FAR) - Math.log(CLOSE)) * ease(i / T1)) };
  if (i < T2) return { k: Math.min(kept.length - 1, Math.round(SLOW + ((i - T1) / (T2 - T1)) * (kept.length - 1 - SLOW))), z: FAR };
  return { k: kept.length - 1, z: Math.exp(Math.log(FAR) + (Math.log(WHOLE) - Math.log(FAR)) * ease((i - T2) / (T3 - T2))) };
}

// ---------------------------------------------------------------- drawing
const run = new Run();
const ff = spawn('ffmpeg', ['-y', '-loglevel', 'error', '-f', 'rawvideo', '-pix_fmt', 'rgb24', '-s', `${OW}x${OH}`, '-r', String(FPS), '-i', '-',
  '-c:v', 'libx264', '-pix_fmt', 'yuv420p', '-crf', '18', '-movflags', '+faststart', `${out}.mp4`], { stdio: ['pipe', 'inherit', 'inherit'] });
const frame = new Uint32Array(OW * OH);
const rgb = Buffer.alloc(OW * OH * 3);
let vx = NaN, vy = NaN;
function line(x0: number, y0: number, x1: number, y1: number, c: number, wdt: number) {
  const n = Math.max(Math.abs(x1 - x0), Math.abs(y1 - y0), 1);
  for (let i = 0; i <= n; i++) {
    const x = Math.round(x0 + ((x1 - x0) * i) / n), y = Math.round(y0 + ((y1 - y0) * i) / n);
    for (let dy = -wdt; dy <= wdt; dy++) for (let dx = -wdt; dx <= wdt; dx++) {
      const X = x + dx, Y = y + dy;
      if (X >= 0 && Y >= 0 && X < OW && Y < OH) frame[Y * OW + X] = c;
    }
  }
}
for (let i = 0; i < T4; i++) {
  const { k, z } = at(i);
  const cur = kept[k];
  run.to(cur.f);
  // The view: centred on the game's frame (eased), inside the world; at the end on the world's middle.
  const tx = cur.x + FW / 2, ty = cur.y + FH / 2;
  if (Number.isNaN(vx)) (vx = tx), (vy = ty);
  const follow = i < T2 ? 0.25 : 0;
  vx += (tx - vx) * follow, vy += (ty - vy) * follow;
  const whole = i >= T2 ? ease((i - T2) / (T3 - T2)) : 0;
  let cx = vx + (WW / 2 - vx) * whole, cy = vy + (WH / 2 - vy) * whole;
  const hw = OW / 2 / z, hh = OH / 2 / z;
  if (whole < 1) {
    cx = Math.max(Math.min(cx, WW - hw), hw);
    cy = Math.max(Math.min(cy, WH - hh), hh);
  }
  const left = cx - hw, top = cy - hh;
  // The map, from the copy as fine as the view needs.
  let L = 0;
  while (L + 1 < levels.length && 1 / 2 ** (L + 1) >= z) L++;
  const lv = levels[L], ls = 1 / 2 ** L;
  for (let y = 0; y < OH; y++) {
    const wy = top + y / z;
    const ly = Math.floor(wy * ls);
    for (let x = 0; x < OW; x++) {
      const wx = left + x / z;
      const lx = Math.floor(wx * ls);
      frame[y * OW + x] = lx >= 0 && ly >= 0 && lx < lv.w && ly < lv.h ? lv.px[ly * lv.w + lx] : BACK;
    }
  }
  // The route so far.
  const upTo = cur.f;
  for (const seg of route) {
    for (let p = 1; p < seg.length && seg[p][2] <= upTo; p++) {
      line((seg[p - 1][0] - left) * z, (seg[p - 1][1] - top) * z, (seg[p][0] - left) * z, (seg[p][1] - top) * z, 0xb48cff, z > 0.3 ? 1 : 0);
    }
  }
  // The game's frame on the map, its hidden left columns clear; a light outline round it.
  if (i < T2) {
    const pix = run.m.ppu.pixels as unknown as ArrayLike<number>;
    const fx = (cur.x - left) * z, fy = (cur.y - top) * z;
    const w = FW * z, h = FH * z;
    // The map around the camera a little darker, so the game's frame stands out on it (from the
    // first second, as the view draws back).
    const dim = 1 - 0.35 * ease(i / FPS);
    if (dim < 1) {
      for (let p = 0; p < OW * OH; p++) {
        const x = p % OW, y = (p / OW) | 0;
        if (x >= fx && x < fx + w && y >= fy && y < fy + h) continue;
        const c = frame[p];
        frame[p] = (Math.round(((c >> 16) & 255) * dim) << 16) | (Math.round(((c >> 8) & 255) * dim) << 8) | Math.round((c & 255) * dim);
      }
    }
    for (let y = Math.max(0, Math.floor(fy)); y < Math.min(OH, Math.ceil(fy + h)); y++) {
      const sy = Math.floor((y - fy) / z);
      if (sy < 0 || sy >= FH) continue;
      for (let x = Math.max(0, Math.floor(fx)); x < Math.min(OW, Math.ceil(fx + w)); x++) {
        const sx = Math.floor((x - fx) / z);
        if (sx < 8 || sx >= FW) continue;
        frame[y * OW + x] = pix[sy * FW + sx] & 0xffffff;
      }
    }
    const o = 0xe6e9ef;
    for (const d of [1, 2]) {
      line(fx - d, fy - d, fx + w + d - 1, fy - d, o, 0), line(fx - d, fy + h + d - 1, fx + w + d - 1, fy + h + d - 1, o, 0);
      line(fx - d, fy - d, fx - d, fy + h + d - 1, o, 0), line(fx + w + d - 1, fy - d, fx + w + d - 1, fy + h + d - 1, o, 0);
    }
  }
  for (let p = 0; p < OW * OH; p++) {
    const c = frame[p];
    rgb[3 * p] = (c >> 16) & 255, rgb[3 * p + 1] = (c >> 8) & 255, rgb[3 * p + 2] = c & 255;
  }
  if (!ff.stdin.write(rgb)) await new Promise((r) => ff.stdin.once('drain', r));
  if (i % 60 === 0) console.log(`${i}/${T4} frame ${cur.f} zoom ${z.toFixed(3)}`);
}
ff.stdin.end();
await new Promise((r) => ff.on('close', r));
// The GIF: 15 frames a second, 800 px wide, one palette for the clip.
execFileSync('ffmpeg', ['-y', '-loglevel', 'error', '-i', `${out}.mp4`, '-vf', 'fps=15,scale=800:-1:flags=lanczos,split[a][b];[a]palettegen=max_colors=128[p];[b][p]paletteuse=dither=bayer:bayer_scale=4', `${out}.gif`]);
console.log(`${out}.mp4, ${out}.gif: ${(T4 / FPS).toFixed(1)} s, ${kept.length} of the run's frames`);
