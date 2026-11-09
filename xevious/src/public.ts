/**
 * The maps for xrom.dev: a folder of static files with no ROM in it, only the picture of the map.
 *   node --experimental-strip-types --no-warnings src/public.ts <dir>
 *
 * The page is the shared maps page bundled with src/play/player.js into one module, the map beside
 * it, and levels.json for the site's text and search engines.
 */
import { copyFileSync, mkdirSync, readFileSync, writeFileSync } from 'node:fs';
import { createRequire } from 'node:module';
import { resolve } from 'node:path';

const repo = resolve(import.meta.dirname, '..');
const out = resolve(process.argv[2] ?? resolve(repo, 'out/public/xevious'));
mkdirSync(out, { recursive: true });

copyFileSync(resolve(repo, 'out/areas/whole.png'), resolve(out, 'whole.png'));
const png = readFileSync(resolve(out, 'whole.png'));
const levels = [{ n: 1, name: 'all sixteen areas', image: 'whole.png', width: png.readUInt32BE(16), height: png.readUInt32BE(20) }];
writeFileSync(resolve(out, 'levels.json'), `${JSON.stringify({ word: 'level', levels }, null, 1)}\n`);

const esbuild = createRequire(resolve(repo, 'libs/nes/package.json'))('esbuild');
await esbuild.build({
  entryPoints: [resolve(repo, 'src/play/player.js')],
  bundle: true,
  format: 'esm',
  minify: true,
  outfile: resolve(out, 'player.js'),
});
writeFileSync(
  resolve(out, 'index.html'),
  `<!doctype html><html lang="en"><head><meta charset="utf-8"><title>Xevious — the sixteen areas</title></head>
<body><script>window.PUBLIC_MAPS=true</script><script type="module" src="player.js"></script></body></html>
`
);
console.log(`the map → ${out}`);
