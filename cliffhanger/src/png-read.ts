/** Reading back the PNGs this repo writes (xrom-libs' encodePng: 8-bit RGB or RGBA, not interlaced). */
import { readFileSync } from 'node:fs';
import { inflateSync } from 'node:zlib';

/** A PNG of ours (8-bit RGB or RGBA, no interlace) back to 0xRRGGBB pixels. */
export function readPng(path: string): { w: number; h: number; px: Uint32Array } {
  const b = readFileSync(path);
  const w = b.readUInt32BE(16);
  const h = b.readUInt32BE(20);
  const type = b[25];
  const parts: Buffer[] = [];
  for (let o = 8; o < b.length; ) {
    const len = b.readUInt32BE(o);
    const t = b.toString('ascii', o + 4, o + 8);
    if (t === 'IDAT') parts.push(b.subarray(o + 8, o + 8 + len));
    o += 12 + len;
  }
  const raw = inflateSync(Buffer.concat(parts));
  const bpp = type === 6 ? 4 : 3;
  const stride = w * bpp;
  const px = new Uint32Array(w * h);
  const prev = new Uint8Array(stride);
  const cur = new Uint8Array(stride);
  for (let y = 0; y < h; y++) {
    const f = raw[y * (stride + 1)];
    const line = raw.subarray(y * (stride + 1) + 1, (y + 1) * (stride + 1));
    for (let i = 0; i < stride; i++) {
      const a = i >= bpp ? cur[i - bpp] : 0;
      const c = i >= bpp ? prev[i - bpp] : 0;
      const up = prev[i];
      let v = line[i];
      if (f === 1) v += a;
      else if (f === 2) v += up;
      else if (f === 3) v += (a + up) >> 1;
      else if (f === 4) {
        const p = a + up - c;
        const pa = Math.abs(p - a), pb = Math.abs(p - up), pc = Math.abs(p - c);
        v += pa <= pb && pa <= pc ? a : pb <= pc ? up : c;
      }
      cur[i] = v & 255;
    }
    for (let x = 0; x < w; x++) px[y * w + x] = (cur[x * bpp] << 16) | (cur[x * bpp + 1] << 8) | cur[x * bpp + 2];
    prev.set(cur);
  }
  return { w, h, px };
}
