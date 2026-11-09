/**
 * The player: Alien 3 played by hand in the browser, on xrom-libs' NES (the one every tool here
 * runs), with switches beside the picture — the level, health and the timer held, walking through
 * walls (no-clip), the exit switched off. After nes-explorer's src/play, which is only read.
 *
 *   node --experimental-strip-types src/play/server.ts [--port 4324]
 *
 * On 127.0.0.1 only. GET / is the page; /levels/ the level maps (out/levels); /src/… this repo's
 * modules and /xrom-libs/nes/… the emulator's (TypeScript served with its types stripped); /rom the
 * cartridge, read in place.
 *
 * Any other game: /?rom=<file> is a plain player (src/play/any.html) of ~/roms/dendy/nes/<file>,
 * served at /rom?file=<file> — the file's name only, never a path. Opened from the workshop's
 * /music/uploads (its Play button). POST /seen: the camera positions the page saw while played (appended to
 * runs/play-seen.jsonl).
 */
import { createServer, type ServerResponse } from 'node:http';
import { appendFileSync, existsSync, mkdirSync, readFileSync, statSync } from 'node:fs';
import { basename, extname, resolve, sep } from 'node:path';
import { stripTypeScriptTypes } from 'node:module';
import { ROM_PATH } from '../rom.ts';

const args = process.argv.slice(2);
const port = Number(args.includes('--port') ? args[args.indexOf('--port') + 1] : 4324);
const repo = resolve(import.meta.dirname, '../..');
const xrom = resolve(repo, 'libs/nes');
const ROMS = resolve(process.env.HOME ?? '', 'roms/dendy/nes');

/** A cartridge of the library by its file name, or null for anything else. */
function libraryRom(name: string | null): string | null {
  if (!name || name !== basename(name) || !name.toLowerCase().endsWith('.nes')) return null;
  const path = resolve(ROMS, name);
  return existsSync(path) && statSync(path).isFile() ? path : null;
}

const TYPES: Record<string, string> = {
  '.png': 'image/png',
  '.html': 'text/html; charset=utf-8',
  '.ts': 'text/javascript; charset=utf-8',
  '.js': 'text/javascript; charset=utf-8',
  '.json': 'application/json',
  '.map': 'application/json',
};

function send(res: ServerResponse, status: number, body: string | Uint8Array, type = 'text/plain; charset=utf-8') {
  res.writeHead(status, { 'Content-Type': type, 'Cache-Control': 'no-store' });
  res.end(body);
}

/** A file under `root` (never outside it), TypeScript stripped of its types. */
function file(res: ServerResponse, root: string, rel: string) {
  const path = resolve(root, '.' + decodeURIComponent(rel));
  if (path !== root && !path.startsWith(root + sep)) return send(res, 403, 'outside');
  if (!existsSync(path) || !statSync(path).isFile()) return send(res, 404, 'not found');
  const ext = extname(path);
  if (ext === '.ts') return send(res, 200, stripTypeScriptTypes(readFileSync(path, 'utf8'), { mode: 'strip' }), TYPES['.ts']);
  return send(res, 200, readFileSync(path), TYPES[ext] ?? 'application/octet-stream');
}

createServer((req, res) => {
  const url = new URL(req.url ?? '/', 'http://localhost');
  const p = url.pathname;
  const romName = url.searchParams.get('rom');
  if ((p === '/' || p === '/index.html') && romName !== null) {
    // Alien 3 itself keeps its own page, with the levels and the switches.
    if (romName === basename(ROM_PATH)) { res.writeHead(302, { Location: '/' }); return res.end(); }
    if (!libraryRom(romName)) return send(res, 404, `Not in ${ROMS}: ${romName}`);
    return file(res, resolve(repo, 'src/play'), '/any.html');
  }
  if (p === '/' || p === '/index.html') return file(res, resolve(repo, 'src/play'), '/index.html');
  if (p === '/levels') { res.writeHead(301, { Location: '/levels/' }); return res.end(); }
  if (p === '/levels/') return file(res, resolve(repo, 'out/levels'), '/index.html');
  if (p.startsWith('/levels/')) return file(res, resolve(repo, 'out/levels'), p.slice('/levels'.length));
  // The camera positions the player's page saw (src/play/client.ts): appended, a JSON line a post.
  if (p === '/seen' && req.method === 'POST') {
    let body = '';
    req.on('data', (c) => (body += c));
    req.on('end', () => {
      try { JSON.parse(body); } catch { return send(res, 400, 'bad'); }
      mkdirSync(resolve(repo, 'runs'), { recursive: true });
      appendFileSync(resolve(repo, 'runs/play-seen.jsonl'), body + '\n');
      send(res, 204, '');
    });
    return;
  }
  if (p === '/rom' && url.searchParams.has('file')) {
    const path = libraryRom(url.searchParams.get('file'));
    return path ? send(res, 200, readFileSync(path), 'application/octet-stream') : send(res, 404, 'not found');
  }
  if (p === '/rom') return send(res, 200, readFileSync(ROM_PATH), 'application/octet-stream');
  if (p.startsWith('/src/')) return file(res, resolve(repo, 'src'), p.slice(4));
  if (p.startsWith('/xrom-libs/nes/src/')) return file(res, resolve(xrom, 'src'), p.slice('/xrom-libs/nes/src'.length));
  if (p.startsWith('/xrom-libs/nes/node_modules/@xromdev/'))
    return file(res, resolve(xrom, 'node_modules/@xromdev'), p.slice('/xrom-libs/nes/node_modules/@xromdev'.length));
  send(res, 404, 'not found');
}).listen(port, '127.0.0.1', () => console.log(`Alien 3 player: http://127.0.0.1:${port}/ (any game: /?rom=<file of ${ROMS}>)`));
