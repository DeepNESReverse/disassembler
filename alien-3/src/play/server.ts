/**
 * The player: Alien 3 played by hand in the browser, on xrom-libs' NES (the one every tool here
 * runs), with switches beside the picture — the level, health and the timer held, walking through
 * walls (no-clip), the exit switched off. After nes-explorer's src/play, which is only read.
 *
 *   node --experimental-strip-types src/play/server.ts [--port 4324]
 *
 * On 127.0.0.1 only. GET / is the page; /levels/ the level maps (out/levels), POST
 * /levels/user-path?level=n the user's lines drawn on one (out/levels/user-paths); /src/… this repo's
 * modules and /xrom-libs/nes/… the emulator's (TypeScript served with its types stripped); /rom the
 * cartridge, read in place.
 */
import { createServer, type ServerResponse } from 'node:http';
import { existsSync, mkdirSync, readFileSync, statSync, writeFileSync } from 'node:fs';
import { extname, resolve, sep } from 'node:path';
import { stripTypeScriptTypes } from 'node:module';
import { ROM_PATH } from '../rom.ts';

const args = process.argv.slice(2);
const port = Number(args.includes('--port') ? args[args.indexOf('--port') + 1] : 4324);
const repo = resolve(import.meta.dirname, '../..');
const xrom = resolve(repo, '../xrom-libs/nes');

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

/** The lines the user draws on a level's map (/levels/): out/levels/user-paths/<nn>.json. */
function saveUserPath(res: ServerResponse, n: number, body: string) {
  if (!(n >= 1 && n <= 12)) return send(res, 400, 'level 1-12');
  let data: unknown;
  try { data = JSON.parse(body); } catch { return send(res, 400, 'not JSON'); }
  const lines = (data as { lines?: unknown }).lines;
  const ok = Array.isArray(lines) && lines.every((l) => Array.isArray(l) && l.every((pt) => Array.isArray(pt) && pt.length === 2 && pt.every(Number.isFinite)));
  if (!ok) return send(res, 400, 'lines: [[[x, y], …], …]');
  mkdirSync(resolve(repo, 'out/levels/user-paths'), { recursive: true });
  writeFileSync(resolve(repo, `out/levels/user-paths/${String(n).padStart(2, '0')}.json`), JSON.stringify({ lines }) + '\n');
  send(res, 200, 'saved');
}

createServer((req, res) => {
  const url = new URL(req.url ?? '/', 'http://localhost');
  const p = url.pathname;
  if (req.method === 'POST' && p === '/levels/user-path') {
    let body = '';
    req.on('data', (c) => { body += c; if (body.length > 1e6) req.destroy(); });
    req.on('end', () => saveUserPath(res, Number(url.searchParams.get('level')), body));
    return;
  }
  if (p === '/' || p === '/index.html') return file(res, resolve(repo, 'src/play'), '/index.html');
  if (p === '/levels') { res.writeHead(301, { Location: '/levels/' }); return res.end(); }
  if (p === '/levels/') return file(res, resolve(repo, 'out/levels'), '/index.html');
  if (p.startsWith('/levels/')) return file(res, resolve(repo, 'out/levels'), p.slice('/levels'.length));
  if (p === '/rom') return send(res, 200, readFileSync(ROM_PATH), 'application/octet-stream');
  if (p.startsWith('/src/')) return file(res, resolve(repo, 'src'), p.slice(4));
  if (p.startsWith('/xrom-libs/nes/src/')) return file(res, resolve(xrom, 'src'), p.slice('/xrom-libs/nes/src'.length));
  if (p.startsWith('/xrom-libs/nes/node_modules/@xromdev/'))
    return file(res, resolve(xrom, 'node_modules/@xromdev'), p.slice('/xrom-libs/nes/node_modules/@xromdev'.length));
  send(res, 404, 'not found');
}).listen(port, '127.0.0.1', () => console.log(`Alien 3 player: http://127.0.0.1:${port}/`));
