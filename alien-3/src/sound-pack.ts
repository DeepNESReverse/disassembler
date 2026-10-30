/**
 * A movie's sound (fceux/movie_sound.lua: the sound chip's writes, frame by frame, as FCEUX played
 * Randil's TAS) packed for the maps' player: out/levels/take/randil-sound.bin.gz — "A3SN", u32
 * frames, then a frame at a time (frame k = movie frame k + 1, as the take's): u16 count,
 * count × (u8 register − $4000, u8 value).
 *   node --experimental-strip-types src/sound-pack.ts [movie_sound.txt] [out]
 */
import { readFileSync, writeFileSync } from 'node:fs';
import { gzipSync } from 'node:zlib';

const [src = 'fceux/movie_sound.txt', out = 'out/levels/take/randil-sound.bin.gz'] = process.argv.slice(2);
const frames: number[][] = [];
for (const line of readFileSync(src, 'utf8').split('\n')) {
  if (line.startsWith('f ')) { const f = Number(line.slice(2)); while (frames.length < f) frames.push([]); }
  else if (line.startsWith('a ') && frames.length) {
    const body = line.slice(2), w = frames[frames.length - 1];
    for (let i = 0; i + 6 <= body.length; i += 6) w.push(parseInt(body.slice(i, i + 4), 16) - 0x4000, parseInt(body.slice(i + 4, i + 6), 16));
  }
}
const bytes: number[] = [0x41, 0x33, 0x53, 0x4e];
const n = frames.length;
bytes.push(n & 255, (n >> 8) & 255, (n >> 16) & 255, n >>> 24);
for (const w of frames) { bytes.push((w.length / 2) & 255, (w.length / 2) >> 8, ...w); }
const raw = Uint8Array.from(bytes);
writeFileSync(out, gzipSync(raw, { level: 9 }));
console.log(`${n} frames, ${frames.reduce((s, w) => s + w.length / 2, 0)} writes: ${(raw.length / 1e6).toFixed(1)} MB → ${out}`);
