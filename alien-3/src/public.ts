/**
 * The maps for xrom.dev: out/public/alien-3, a page of static files with no ROM in it.
 *   node --experimental-strip-types src/public.ts [dir]
 * The page is src/viewer.py's without the workshop's parts (--public); the run player
 * (src/take-player.js, with the shared maps page src/maps-run it mounts) is bundled into one module and fed cart.bin.gz instead of the ROM: each
 * level's tile numbers and palettes (what src/level.ts reads from the layout and the blocks), the
 * CHR banks the run draws with — the levels' background banks and every sprite bank the take sets
 * ($0718, $0719, $071A and the fixed $7B) — and the DMC's samples the run's sound plays; the rest of
 * the CHR and the PRG stays zero.
 */
import { copyFileSync, cpSync, mkdirSync, readFileSync, writeFileSync } from 'node:fs';
import { execFileSync } from 'node:child_process';
import { gunzipSync, gzipSync } from 'node:zlib';
import { resolve } from 'node:path';
import { createRequire } from 'node:module';
import { ROM_PATH } from './rom.ts';
import { Level, LEVELS } from './level.ts';

const repo = resolve(import.meta.dirname, '..');
const out = resolve(process.argv[2] ?? resolve(repo, 'out/public/alien-3'));
const levelsDir = resolve(repo, 'out/levels');
mkdirSync(resolve(out, 'take'), { recursive: true });
mkdirSync(resolve(out, 'maps-run'), { recursive: true });

const rom = readFileSync(ROM_PATH);
const prg = rom.subarray(16, 16 + rom[4] * 0x4000);
const chr = rom.subarray(16 + rom[4] * 0x4000);
const chrOut = new Uint8Array(chr.length), prgOut = new Uint8Array(prg.length);
const keepChr = (bank: number, size: number) => chrOut.set(chr.subarray(bank * 0x400, bank * 0x400 + size), bank * 0x400);

// Each level: its background's bank (256 tiles from it) and its tile map.
const levels = Array.from({ length: LEVELS }, (_, n) => new Level(prg, n));
const parts: Uint8Array[] = [];
for (const level of levels) {
  keepChr(level.header.chr, 0x1000);
  const w = level.widthTiles, h = level.heightTiles;
  const head = Uint8Array.of(level.header.chr, w & 0xff, w >> 8, h & 0xff, h >> 8);
  const tiles = new Uint8Array(w * h), pals = new Uint8Array(w * h);
  for (let y = 0; y < h; y++) for (let x = 0; x < w; x++) { const t = level.tile(x, y); tiles[y * w + x] = t.tile; pals[y * w + x] = t.palette; }
  parts.push(head, tiles, pals);
}

// The sprite banks the take sets (src/take-pack.ts: u32 magic, u32 frames, u16 cells, the cells,
// then per frame u16 count and count × (u16 cell, u8 value)).
const take = gunzipSync(readFileSync(resolve(levelsDir, 'take/randil.bin.gz')));
const frames = take.readUInt32LE(4), nCells = take.readUInt16LE(8);
const cells = Array.from({ length: nCells }, (_, i) => take.readUInt16LE(10 + 2 * i));
const bankCells = new Set([0x718, 0x719, 0x71a].map((a) => cells.indexOf(a)));
const banks = new Set([0x7b]);
for (let f = 0, o = 10 + 2 * nCells; f < frames; f++) {
  const count = take.readUInt16LE(o); o += 2;
  for (let k = 0; k < count; k++, o += 3) if (bankCells.has(take.readUInt16LE(o))) banks.add(take[o + 2]);
}
// (A bank past the CHR's end draws nothing in the player either, as with the ROM.)
for (const b of banks) if ((b + 1) * 0x400 <= chr.length) keepChr(b, 0x400);

// The DMC's samples: every address ($4012) and length ($4013) the run's sound writes
// (src/sound-pack.ts: u32 magic, u32 frames, per frame u16 count and count × (register, value)).
const sound = gunzipSync(readFileSync(resolve(levelsDir, 'take/randil-sound.bin.gz')));
const addrs = new Set<number>(), lens = new Set<number>();
for (let f = 0, o = 8, n = sound.readUInt32LE(4); f < n; f++) {
  const count = sound.readUInt16LE(o); o += 2;
  for (let k = 0; k < count; k++, o += 2) {
    const reg = sound[o] & 0x3f;
    if (reg === 0x12) addrs.add(sound[o + 1]);
    if (reg === 0x13) lens.add(sound[o + 1]);
  }
}
const longest = Math.max(0, ...lens) * 16 + 1;
for (const a of addrs) {
  const at = 0xc000 + a * 64;
  for (let i = 0; i < longest && at + i <= 0xffff; i++) {
    const p = (at + i >= 0xe000 ? 15 : 14) * 0x2000 + ((at + i) & 0x1fff);
    prgOut[p] = prg[p];
  }
}

const sizes = new Uint8Array(8);
new DataView(sizes.buffer).setUint32(0, chrOut.length, true);
new DataView(sizes.buffer).setUint32(4, prgOut.length, true);
writeFileSync(resolve(out, 'cart.bin.gz'), gzipSync(Buffer.concat([sizes, chrOut, prgOut, ...parts]), { level: 9 }));
console.log(`cart.bin.gz: ${levels.length} levels, sprite banks ${[...banks].sort((a, b) => a - b).map((b) => b.toString(16)).join(' ')}, DMC samples ${[...addrs].map((a) => (0xc000 + a * 64).toString(16)).join(' ') || 'none'} (${longest} bytes)`);

// The maps, the prisoners, the run, what is seen.
for (let n = 1; n <= LEVELS; n++) copyFileSync(resolve(levelsDir, `${String(n).padStart(2, '0')}.png`), resolve(out, `${String(n).padStart(2, '0')}.png`));
cpSync(resolve(levelsDir, 'prisoners'), resolve(out, 'prisoners'), { recursive: true });
for (const f of ['tas-randil.json', 'run-seen.json', 'visible.json', 'take/randil.bin.gz', 'take/randil-sound.bin.gz']) copyFileSync(resolve(levelsDir, f), resolve(out, f));
// The sound's worklet, beside the bundled player as in the workshop (src/maps-run/sound.js).
copyFileSync(resolve(repo, 'src/maps-run/sound.js'), resolve(out, 'maps-run/sound.js'));

// levels.json: what the site's page says of each level, as text and for search engines — its map
// and size, the time Randil's run spends on it, the prisoners to free (object type 6).
const objects = JSON.parse(readFileSync(resolve(levelsDir, 'objects.json'), 'utf8')) as Record<string, { type: number }[]>;
const trail = JSON.parse(readFileSync(resolve(levelsDir, 'tas-randil.json'), 'utf8')).levels as Record<string, { frames: number }>;
const pngSize = (f: string) => { const b = readFileSync(f); return { width: b.readUInt32BE(16), height: b.readUInt32BE(20) }; };
writeFileSync(resolve(out, 'levels.json'), JSON.stringify({
  word: 'level',
  levels: Array.from({ length: LEVELS }, (_, i) => {
    const n = i + 1, image = `${String(n).padStart(2, '0')}.png`;
    return {
      n, ...(n % 3 === 0 ? { name: 'boss' } : {}), image, ...pngSize(resolve(out, image)),
      ...(trail[n] ? { run: Math.round(trail[n].frames / 60.0988) } : {}),
      prisoners: (objects[n] ?? []).filter((o) => o.type === 6).length,
    };
  }),
}, null, 1));

// The run player in one module: '/src/…' is this repo's, '/xrom-libs/…' the libraries'.
const esbuild = createRequire(resolve(repo, 'libs/nes/package.json'))('esbuild');
await esbuild.build({
  entryPoints: [resolve(repo, 'src/take-player.js')],
  bundle: true, format: 'esm', minify: true, outfile: resolve(out, 'take-player.js'), logLevel: 'warning',
  plugins: [{
    name: 'roots',
    setup(b: { onResolve: (o: { filter: RegExp }, f: (a: { path: string }) => { path: string }) => void }) {
      b.onResolve({ filter: /^\/src\// }, (a) => ({ path: resolve(repo, a.path.slice(1)) }));
      b.onResolve({ filter: /^\/xrom-libs\// }, (a) => ({ path: resolve(repo, '..', a.path.slice(1)) }));
    },
  }],
});
execFileSync('python3', ['src/viewer.py', '--public', out], { cwd: repo, stdio: 'inherit' });
console.log(`out: ${out}`);
