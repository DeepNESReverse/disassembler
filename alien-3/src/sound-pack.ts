/**
 * A movie's sound (fceux/movie_sound.lua: the sound chip's writes, frame by frame, as FCEUX played
 * Randil's TAS) packed for the maps' player: out/levels/take/randil-sound.bin.gz — "A3SN", u32
 * frames, then a frame at a time (frame k = movie frame k + 1, as the take's): u16 count,
 * count × (u8 register − $4000 | owner, u8 value). The owner: $80 an effect's, $40 the music's,
 * 0 neither (the frame counter, $4015, the DMC; and a channel whose slot is silent) — from the take's
 * RAM at the end of the frame: the driver's slot X (pulse 1, pulse 2, triangle, noise) holds the
 * stream it plays ×2 in $03D8+X, streams 1-$2F the songs', $30 and up the effects' (B15:$EDD4 deals
 * a sound out over the slots by the tables at $EE3A, STATUS §25).
 *   node --experimental-strip-types src/sound-pack.ts [movie_sound.txt] [take] [out]
 */
import { readFileSync, writeFileSync } from 'node:fs';
import { gzipSync } from 'node:zlib';
import { parseTake } from './take.ts';

const [src = 'fceux/movie_sound.txt', takePath = 'fceux/tas_take.play.txt', out = 'out/levels/take/randil-sound.bin.gz'] = process.argv.slice(2);
const take = parseTake(takePath);
const frames: number[][] = [];
for (const line of readFileSync(src, 'utf8').split('\n')) {
  if (line.startsWith('f ')) { const f = Number(line.slice(2)); while (frames.length < f) frames.push([]); }
  else if (line.startsWith('a ') && frames.length) {
    const body = line.slice(2), w = frames[frames.length - 1];
    for (let i = 0; i + 6 <= body.length; i += 6) w.push(parseInt(body.slice(i, i + 4), 16) - 0x4000, parseInt(body.slice(i + 4, i + 6), 16));
  }
}
const ram = new Uint8Array(0x800);
const owners = [0, 0, 0];
frames.forEach((w, k) => {
  for (const c of take.changes[k] ?? []) ram[c >> 8] = c & 255;
  for (let i = 0; i < w.length; i += 2) {
    const slot = w[i] >> 2;
    if (slot > 3) { owners[0]++; continue; }
    const stream = ram[0x3d8 + slot] >> 1;
    const owner = stream === 0 ? 0 : stream < 0x30 ? 0x40 : 0x80;
    owners[owner >> 6]++;
    w[i] |= owner;
  }
});
console.log(`writes: ${owners[0]} shared, ${owners[1]} music, ${owners[2]} effects`);
const bytes: number[] = [0x41, 0x33, 0x53, 0x4e];
const n = frames.length;
bytes.push(n & 255, (n >> 8) & 255, (n >> 16) & 255, n >>> 24);
for (const w of frames) { bytes.push((w.length / 2) & 255, (w.length / 2) >> 8, ...w); }
const raw = Uint8Array.from(bytes);
writeFileSync(out, gzipSync(raw, { level: 9 }));
console.log(`${n} frames, ${frames.reduce((s, w) => s + w.length / 2, 0)} writes: ${(raw.length / 1e6).toFixed(1)} MB → ${out}`);
