/**
 * The maps for xrom.dev: a folder of static files with no ROM in it.
 *   node --experimental-strip-types --no-warnings src/public.ts <dir>
 *
 * The page is the shared maps page bundled with Cliffhanger's run (src/play/player.js → one module,
 * player.js), fed cart.bin.gz instead of the ROM: the 128 KB of CHR with only the tiles the page
 * ever draws — every tile of the fifteen maps (each from its section's background banks, level.ts),
 * every background tile of the field and every sprite tile in the sprite memory on the frames a
 * section is shown, through that frame's MMC3 banks (take.bin.gz); the rest zero. Beside it: the
 * maps, the run, the path, the world (world.json, starts.json), the sound's worklet, levels.json
 * (what the site's page says of each map, as text for search engines).
 */
import { copyFileSync, mkdirSync, readFileSync, writeFileSync } from 'node:fs';
import { gunzipSync, gzipSync } from 'node:zlib';
import { resolve } from 'node:path';
import { createRequire } from 'node:module';
import { romFile } from './rom.ts';
import { SECTIONS, section, prg } from './level.ts';

const repo = resolve(import.meta.dirname, '..');
const out = resolve(process.argv[2] ?? resolve(repo, 'out/public/cliffhanger'));
const levels = resolve(repo, 'out/levels');
mkdirSync(resolve(out, 'maps-run'), { recursive: true });

const rom = romFile();
const chr = rom.subarray(16 + rom[4] * 0x4000);
const keep = new Uint8Array(chr.length / 16);

// The maps' tiles: a block's four tiles from the section's background banks (CHR 2 KB × its byte).
for (let s = 0; s < SECTIONS; s++) {
  const sec = section(s);
  const used = new Set(sec.blocks);
  for (const b of used) for (let i = 0; i < 4; i++) keep[sec.chr * 128 + prg[sec.tilesAt + 4 * b + i]] = 1;
}

// The run's: on a section's shown frames, the field's background tiles and the sprites' tiles,
// through the frame's banks (state 16-23: the 1 KB bank in each slot).
const take = gunzipSync(readFileSync(resolve(levels, 'take.bin.gz')));
const frames = take.readUInt32LE(4), size = take.readUInt16LE(8);
const s = new Uint8Array(size);
const OAM = 32, NT = 320;
const tileOf = (addr: number) => s[16 + (addr >> 10)] * 64 + ((addr & 0x3ff) >> 4);
for (let f = 0, o = 10; f <= frames; f++) {
  const count = take.readUInt16LE(o);
  o += 2;
  for (let k = 0; k < count; k++, o += 3) s[take.readUInt16LE(o)] = take[o + 2];
  o += 2 + 2 * take.readUInt16LE(o);
  if (!s[1]) continue;
  const ctrl = s[6];
  const bg = (ctrl & 0x10) << 8;
  for (let n = 0; n < 4; n++) for (let i = 0; i < 960; i++) keep[tileOf(bg + s[NT + n * 0x400 + i] * 16)] = 1;
  for (let k = 0; k < 64; k++) {
    const tile = s[OAM + k * 4 + 1];
    if (ctrl & 0x20) {
      keep[tileOf(((tile & 1) << 12) | ((tile & 0xfe) << 4))] = 1;
      keep[tileOf((((tile & 1) << 12) | ((tile & 0xfe) << 4)) + 16)] = 1;
    } else keep[tileOf(((ctrl & 0x08) << 9) | (tile << 4))] = 1;
  }
}
const chrOut = new Uint8Array(chr.length);
for (let t = 0; t < keep.length; t++) if (keep[t]) chrOut.set(chr.subarray(t * 16, t * 16 + 16), t * 16);
writeFileSync(resolve(out, 'cart.bin.gz'), gzipSync(chrOut, { level: 9 }));
const kept = keep.reduce((a, b) => a + b, 0);
console.log(`cart.bin.gz: ${kept} of ${keep.length} tiles kept (${((100 * kept) / keep.length).toFixed(0)} % of the CHR), no PRG`);

for (let n = 0; n < SECTIONS; n++) copyFileSync(resolve(levels, `${String(n).padStart(2, '0')}.png`), resolve(out, `${String(n).padStart(2, '0')}.png`));
for (const f of ['take.bin.gz', 'tas-world.json', 'world.json', 'starts.json']) copyFileSync(resolve(levels, f), resolve(out, f));
copyFileSync(resolve(repo, 'src/maps-run/sound.js'), resolve(out, 'maps-run/sound.js'));

// levels.json: each section's map, its size, its name where it has one, the run's time on it.
const ways = JSON.parse(readFileSync(resolve(levels, 'tas.json'), 'utf8')).levels as Record<string, { frames: number }>;
const NAMES: Record<number, string> = { 5: 'the house', 14: 'the last fight' };
const pngSize = (f: string) => { const b = readFileSync(f); return { width: b.readUInt32BE(16), height: b.readUInt32BE(20) }; };
writeFileSync(resolve(out, 'levels.json'), JSON.stringify({
  word: 'level',
  levels: Array.from({ length: SECTIONS }, (_, i) => ({
    n: i + 1,
    ...(NAMES[i] ? { name: NAMES[i] } : {}),
    image: `${String(i).padStart(2, '0')}.png`,
    ...pngSize(resolve(out, `${String(i).padStart(2, '0')}.png`)),
    run: Math.round((ways[i + 1]?.frames ?? 0) / 60.0988),
  })),
}, null, 1));

// The player in one module: '/src/…' is this repo's, '/libs/…' the libraries'.
const esbuild = createRequire(resolve(repo, 'libs/nes/package.json'))('esbuild');
await esbuild.build({
  entryPoints: [resolve(repo, 'src/play/player.js')],
  bundle: true, format: 'esm', minify: true, outfile: resolve(out, 'player.js'), logLevel: 'warning', target: 'es2022',
  plugins: [{
    name: 'roots',
    setup(b: { onResolve: (o: { filter: RegExp }, f: (a: { path: string }) => { path: string }) => void }) {
      b.onResolve({ filter: /^\/src\// }, (a) => ({ path: resolve(repo, a.path.slice(1)) }));
      b.onResolve({ filter: /^\/libs\// }, (a) => ({ path: resolve(repo, a.path.slice(1)) }));
    },
  }],
});
writeFileSync(
  resolve(out, 'index.html'),
  `<!doctype html><html lang="en"><head><meta charset="utf-8"><title>Cliffhanger — the mountain</title></head>
<body><script>window.CART_PACK='cart.bin.gz'</script><script type="module" src="player.js"></script></body></html>
`,
);
console.log(`out: ${out}`);
