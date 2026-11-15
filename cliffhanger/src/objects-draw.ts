/**
 * The objects drawn on the section maps, to look at: out/levels/<nn>-objects.png (objects.json over
 * <nn>.png). Each object with its kind's look (objects.ts), at its place from the cartridge. A kind
 * the run never shows in a section takes its look from another section (with that section's CHR
 * banks, this section's palette); a kind the run never shows at all is left out (counted).
 *   node --experimental-strip-types --no-warnings src/objects-draw.ts [section …]
 */
import { readFileSync, writeFileSync } from 'node:fs';
import { inflateSync } from 'node:zlib';
import { encodePng } from '../libs/nes/src/png.ts';
import { NES_RGB } from '../libs/nes/src/palette.ts';
import { romFile } from './rom.ts';
import { SECTIONS } from './level.ts';

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

const rom = romFile();
const chr = rom.subarray(16 + rom[4] * 0x4000);
const data = JSON.parse(readFileSync('out/levels/objects.json', 'utf8'));
const wanted = process.argv.slice(2).map(Number);
const unseen: string[] = [];
for (const s of wanted.length ? wanted : [...Array(SECTIONS).keys()]) {
  const { w, h, px } = readPng(`out/levels/${String(s).padStart(2, '0')}.png`);
  const pal = data.palettes[s];
  for (const e of data.sections[s]) {
    const other = Object.keys(data.looks).find((k) => k.endsWith(`:${e.kind}`));
    const look = data.looks[`${s}:${e.kind}`] ?? (other ? data.looks[other] : null);
    if (!look) {
      unseen.push(`${s}:${e.kind.toString(16)}`);
      continue;
    }
    for (const [dx, dy, tile, attr] of look.sprites) {
      const height = look.tall ? 16 : 8;
      for (let r = 0; r < height; r++) {
        const rr = attr & 0x80 ? height - 1 - r : r;
        let base: number;
        let row = rr;
        if (look.tall) {
          base = ((tile & 1) << 12) | ((tile & 0xfe) << 4);
          if (row >= 8) { base += 16; row -= 8; }
        } else base = 0x1000 | (tile << 4);
        const at = (a: number) => chr[look.banks[a >> 10] * 0x400 + (a & 0x3ff)];
        const lo = at(base + row), hi = at(base + row + 8);
        for (let j = 0; j < 8; j++) {
          const bit = attr & 0x40 ? j : 7 - j;
          const c = ((lo >> bit) & 1) | (((hi >> bit) & 1) << 1);
          if (!c) continue;
          const X = Math.round(e.x) + dx + j, Y = Math.round(e.y) + dy + r;
          if (X >= 0 && X < w && Y >= 0 && Y < h) px[Y * w + X] = NES_RGB[pal[(attr & 3) * 4 + c] & 0x3f];
        }
      }
    }
  }
  writeFileSync(`out/levels/${String(s).padStart(2, '0')}-objects.png`, encodePng(px, w, h, 1));
}
console.log(`drawn; never seen (section:kind): ${unseen.join(' ') || 'none'}`);
