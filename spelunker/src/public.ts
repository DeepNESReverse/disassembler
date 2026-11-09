/**
 * The maps for xrom.dev: a folder of static files with no ROM in it.
 *   node --experimental-strip-types src/public.ts <dir>
 *
 * The page is the shared maps page bundled with Spelunker's run (src/play/player.js → one module,
 * player.js), fed cart.bin.gz instead of the ROM: the 8 KB of pattern tables with only the tiles the
 * page ever draws — every background tile of the cave and of the frames that show it, every sprite
 * tile in the sprite memory on those frames and the items' (items.json); the rest zero.
 * Beside it: the cave, the run, the path, the items, the sound's worklet.
 */
import { copyFileSync, mkdirSync, readFileSync, writeFileSync } from 'node:fs';
import { gunzipSync, gzipSync } from 'node:zlib';
import { resolve } from 'node:path';
import { createRequire } from 'node:module';
import { parseRom } from '../libs/nes-explorer/src/core/core.ts';
import { romFile } from './rom.ts';
import { decode, TILE_COLS, TILE_ROWS } from './level.ts';

const repo = resolve(import.meta.dirname, '..');
const out = resolve(process.argv[2] ?? resolve(repo, 'out/public/spelunker'));
const cave = resolve(repo, 'out/cave');
mkdirSync(resolve(out, 'maps-run'), { recursive: true });

const file = romFile();
const rom = parseRom(file);
const chr = rom.chr;
const keep = new Uint8Array(chr.length / 16);

// The cave's tiles, from the background table it is drawn with ($1000, render.ts).
const world = decode({ prg: rom.prg, chr }, new Uint8Array(0x800));
for (let y = 0; y < TILE_ROWS; y++) for (let x = 0; x < TILE_COLS; x++) keep[256 + world.tiles[y][x]] = 1;

// The run's, on the frames that show the cave: both nametables' tiles and the sprite memory's.
const take = gunzipSync(readFileSync(resolve(cave, 'take.bin.gz')));
const frames = take.readUInt32LE(4), size = take.readUInt16LE(8);
const s = new Uint8Array(size);
const OAM = 16, CIRAM = 304;
for (let f = 0, o = 10; f < frames; f++) {
  const count = take.readUInt16LE(o);
  o += 2;
  for (let k = 0; k < count; k++, o += 3) s[take.readUInt16LE(o)] = take[o + 2];
  o += 2 + 2 * take.readUInt16LE(o);
  if (!s[4]) continue;
  const ctrl = s[5];
  const bg = (ctrl & 0x10) >> 4;
  for (let i = 0; i < 0x800; i++) if ((i & 0x3ff) < 0x3c0) keep[bg * 256 + s[CIRAM + i]] = 1;
  for (let k = 0; k < 64; k++) {
    const tile = s[OAM + k * 4 + 1];
    if (ctrl & 0x20) { keep[((tile & 1) << 8) + (tile & 0xfe)] = 1; keep[((tile & 1) << 8) + (tile & 0xfe) + 1] = 1; }
    else keep[((ctrl & 0x08) << 5) + tile] = 1;
  }
}
const items = JSON.parse(readFileSync(resolve(cave, 'items.json'), 'utf8'));
for (const look of Object.values(items.looks) as [number, number, number, number][][]) for (const [, , tile] of look) keep[(items.spriteTable >> 4) + tile] = 1;

const chrOut = new Uint8Array(chr.length);
for (let t = 0; t < keep.length; t++) if (keep[t]) chrOut.set(chr.subarray(t * 16, t * 16 + 16), t * 16);
writeFileSync(resolve(out, 'cart.bin.gz'), gzipSync(chrOut, { level: 9 }));
const kept = keep.reduce((a, b) => a + b, 0);
console.log(`cart.bin.gz: ${kept} of ${keep.length} tiles kept (${((100 * kept) / keep.length).toFixed(0)} % of the pattern tables), no PRG`);

for (const f of ['cave.png', 'cave-items.png', 'take.bin.gz', 'tas.json', 'items.json']) copyFileSync(resolve(cave, f), resolve(out, f));
copyFileSync(resolve(repo, 'src/maps-run/sound.js'), resolve(out, 'maps-run/sound.js'));

// levels.json: what the site's page says of the cave, as text and for search engines.
const way = JSON.parse(readFileSync(resolve(cave, 'tas.json'), 'utf8')).levels['1'] as { frames: number };
// The picture is the cave with its items (items.py); the site knows the words `level` and `stage`.
const png = readFileSync(resolve(out, 'cave-items.png'));
writeFileSync(resolve(out, 'levels.json'), JSON.stringify({
  word: 'level',
  levels: [{ n: 1, name: 'the cave', image: 'cave-items.png', width: png.readUInt32BE(16), height: png.readUInt32BE(20), run: Math.round(way.frames / 60.0988) }],
}, null, 1));

const esbuild = createRequire(resolve(repo, 'libs/nes/package.json'))('esbuild');
await esbuild.build({
  entryPoints: [resolve(repo, 'src/play/player.js')],
  bundle: true, format: 'esm', minify: true, outfile: resolve(out, 'player.js'), logLevel: 'warning',
  plugins: [{
    name: 'roots',
    setup(b: { onResolve: (o: { filter: RegExp }, f: (a: { path: string }) => { path: string }) => void }) {
      b.onResolve({ filter: /^\/src\// }, (a) => ({ path: resolve(repo, a.path.slice(1)) }));
      b.onResolve({ filter: /^\/xrom-libs\// }, (a) => ({ path: resolve(repo, '..', a.path.slice(1)) }));
    },
  }],
});
writeFileSync(
  resolve(out, 'index.html'),
  `<!doctype html><html lang="en"><head><meta charset="utf-8"><title>Spelunker — the cave</title></head>
<body><script>window.CART_PACK='cart.bin.gz'</script><script type="module" src="player.js"></script></body></html>
`,
);
console.log(`out: ${out}`);
