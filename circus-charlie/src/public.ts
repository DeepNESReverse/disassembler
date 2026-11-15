/**
 * The maps for xrom.dev: a folder of static files with no ROM in it.
 *   node --experimental-strip-types src/public.ts <dir>
 *
 * The page is the shared maps page bundled with Circus Charlie's run (src/play/player.js → one
 * module, player.js), fed cart.bin.gz instead of the ROM: the 8 KB of pattern tables with only the
 * tiles the page ever draws — every tile of the five maps, every background tile of the field and
 * every sprite tile in the sprite memory on the frames a stage is shown (take.bin.gz); the rest zero.
 * Beside it: the maps (plain and "drawn by play"), the run, the path, the sound's worklet.
 */
import { copyFileSync, mkdirSync, readFileSync, writeFileSync } from 'node:fs';
import { gunzipSync, gzipSync } from 'node:zlib';
import { resolve } from 'node:path';
import { createRequire } from 'node:module';
import { romFile } from './rom.ts';

const repo = resolve(import.meta.dirname, '..');
const out = resolve(process.argv[2] ?? resolve(repo, 'out/public/circus-charlie'));
const stages = resolve(repo, 'out/stages');
mkdirSync(resolve(out, 'maps-run'), { recursive: true });

const rom = romFile();
const chr = rom.subarray(16 + rom[4] * 0x4000);
const keep = new Uint8Array(chr.length / 16);

// The maps' tiles (render.ts draws them from the background table each map was shown with).
for (let n = 1; n <= 5; n++) {
  const m = JSON.parse(readFileSync(resolve(stages, `stage${n}.json`), 'utf8'));
  const bg = Number(Object.entries(m.bgTables as Record<string, number>).sort((a, b) => b[1] - a[1])[0][0]);
  for (const t of m.tiles as number[]) if (t >= 0) keep[(bg >> 4) + t] = 1;
}

// The run's: the state per frame (take-pack.ts) — on a stage's shown frames, the field's background
// tiles of both pages and the sprite memory's tiles, with the tables PPUCTRL picks.
const take = gunzipSync(readFileSync(resolve(stages, 'take.bin.gz')));
const frames = take.readUInt32LE(4), size = take.readUInt16LE(8);
const s = new Uint8Array(size);
const OAM = 16, CIRAM = 304;
for (let f = 0, o = 10; f < frames; f++) {
  const count = take.readUInt16LE(o);
  o += 2;
  for (let k = 0; k < count; k++, o += 3) s[take.readUInt16LE(o)] = take[o + 2];
  o += 2 + 2 * take.readUInt16LE(o);
  if (!((s[1] === 5 || s[1] === 8) && s[4])) continue;
  const ctrl = s[5];
  const bg = (ctrl & 0x10) << 8;
  for (let page = 0; page < 2; page++) for (let row = 5; row < 30; row++) for (let cx = 0; cx < 32; cx++) keep[(bg >> 4) + s[CIRAM + page * 0x400 + row * 32 + cx]] = 1;
  for (let k = 0; k < 64; k++) {
    const tile = s[OAM + k * 4 + 1];
    if (ctrl & 0x20) { keep[((tile & 1) << 8) + (tile & 0xfe)] = 1; keep[((tile & 1) << 8) + (tile & 0xfe) + 1] = 1; }
    else keep[((ctrl & 0x08) << 5) + tile] = 1;
  }
}
const chrOut = new Uint8Array(chr.length);
for (let t = 0; t < keep.length; t++) if (keep[t]) chrOut.set(chr.subarray(t * 16, t * 16 + 16), t * 16);
writeFileSync(resolve(out, 'cart.bin.gz'), gzipSync(chrOut, { level: 9 }));
const kept = keep.reduce((a, b) => a + b, 0);
console.log(`cart.bin.gz: ${kept} of ${keep.length} tiles kept (${((100 * kept) / keep.length).toFixed(0)} % of the pattern tables), no PRG`);

for (let n = 1; n <= 5; n++) for (const kind of ['', '-marks']) copyFileSync(resolve(stages, `stage${n}${kind}.png`), resolve(out, `stage${n}${kind}.png`));
for (const f of ['take.bin.gz', 'tas.json']) copyFileSync(resolve(stages, f), resolve(out, f));
copyFileSync(resolve(repo, 'src/maps-run/sound.js'), resolve(out, 'maps-run/sound.js'));

// levels.json: what the site's page says of each stage, as text and for search engines — its map
// and size, its name, the time klmz's run spends on it.
const NAMES = ['lion and fire rings', 'tightrope', 'balls', 'horse', 'trapeze'];
const ways = JSON.parse(readFileSync(resolve(stages, 'tas.json'), 'utf8')).levels as Record<string, { frames: number }>;
const pngSize = (f: string) => { const b = readFileSync(f); return { width: b.readUInt32BE(16), height: b.readUInt32BE(20) }; };
writeFileSync(resolve(out, 'levels.json'), JSON.stringify({
  word: 'stage',
  levels: NAMES.map((name, i) => ({
    n: i + 1, name, image: `stage${i + 1}.png`, ...pngSize(resolve(out, `stage${i + 1}.png`)),
    run: Math.round(ways[i + 1].frames / 60.0988),
  })),
}, null, 1));

// The player in one module: '/src/…' is this repo's, '/xrom-libs/…' the libraries'.
const esbuild = createRequire(resolve(repo, 'libs/nes/package.json'))('esbuild');
await esbuild.build({
  entryPoints: [resolve(repo, 'src/play/player.js')],
  bundle: true, format: 'esm', minify: true, outfile: resolve(out, 'player.js'), logLevel: 'warning',
  plugins: [{
    name: 'roots',
    setup(b: { onResolve: (o: { filter: RegExp }, f: (a: { path: string }) => { path: string }) => void }) {
      b.onResolve({ filter: /^\/src\// }, (a) => ({ path: resolve(repo, a.path.slice(1)) }));
      b.onResolve({ filter: /^\/xrom-libs\// }, (a) => ({ path: resolve(repo, 'libs', a.path.slice('/xrom-libs/'.length)) }));
    },
  }],
});
writeFileSync(
  resolve(out, 'index.html'),
  `<!doctype html><html lang="en"><head><meta charset="utf-8"><title>Circus Charlie — stages</title></head>
<body><script>window.CART_PACK='cart.bin.gz'</script><script type="module" src="player.js"></script></body></html>
`,
);
console.log(`out: ${out}`);
