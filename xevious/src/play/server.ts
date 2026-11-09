/**
 * The maps' page on 127.0.0.1 (after ~/spelunker-levels' src/play/server.ts).
 *
 *   node --experimental-strip-types src/play/server.ts [--port 4327]
 *
 * GET / the page (src/play/index.html); /areas/… the maps (out/areas); /src/… this repo's modules.
 * GET /puzzle the pieces to drag about (src/play/puzzle.html); GET and POST /puzzle.json their layout (data/puzzle.json).
 */
import { createServer, type ServerResponse } from 'node:http';
import { existsSync, mkdirSync, readFileSync, statSync, writeFileSync } from 'node:fs';
import { extname, resolve, sep } from 'node:path';

const args = process.argv.slice(2);
const port = Number(args.includes('--port') ? args[args.indexOf('--port') + 1] : 4327);
const repo = resolve(import.meta.dirname, '../..');

const TYPES: Record<string, string> = {
  '.png': 'image/png',
  '.html': 'text/html; charset=utf-8',
  '.js': 'text/javascript; charset=utf-8',
  '.json': 'application/json',
};

const LAYOUT = resolve(repo, 'data/puzzle.json');

/** A layout is sixteen `{ n, x, y }` of whole numbers; anything else is refused. */
function layoutOf(body: string) {
  const pieces = (JSON.parse(body) as { pieces: { n: number; x: number; y: number }[] }).pieces;
  if (pieces.length !== 16 || !pieces.every((p) => [p.n, p.x, p.y].every(Number.isInteger))) throw new Error('not a layout');
  return { pieces: pieces.map(({ n, x, y }) => ({ n, x, y })) };
}

function send(res: ServerResponse, status: number, body: string | Uint8Array, type = 'text/plain; charset=utf-8') {
  res.writeHead(status, { 'Content-Type': type, 'Cache-Control': 'no-store' });
  res.end(body);
}

/** A file under `root` (never outside it). */
function file(res: ServerResponse, root: string, rel: string) {
  const path = resolve(root, '.' + decodeURIComponent(rel));
  if (path !== root && !path.startsWith(root + sep)) return send(res, 403, 'outside');
  if (!existsSync(path) || !statSync(path).isFile()) return send(res, 404, 'not found');
  return send(res, 200, readFileSync(path), TYPES[extname(path)] ?? 'application/octet-stream');
}

createServer((req, res) => {
  const p = new URL(req.url ?? '/', 'http://localhost').pathname;
  if (p === '/' || p === '/index.html') return file(res, resolve(repo, 'src/play'), '/index.html');
  if (p === '/puzzle') return file(res, resolve(repo, 'src/play'), '/puzzle.html');
  if (p === '/puzzle.json' && req.method === 'POST') {
    let body = '';
    req.on('data', (chunk) => {
      body += chunk;
      if (body.length > 20000) req.destroy();
    });
    req.on('end', () => {
      try {
        mkdirSync(resolve(repo, 'data'), { recursive: true });
        writeFileSync(LAYOUT, `${JSON.stringify(layoutOf(body), null, 1)}\n`);
        send(res, 200, 'saved');
      } catch {
        send(res, 400, 'not a layout');
      }
    });
    return;
  }
  if (p === '/puzzle.json') return file(res, resolve(repo, 'data'), '/puzzle.json');
  if (p.startsWith('/areas/')) return file(res, resolve(repo, 'out/areas'), p.slice('/areas'.length));
  if (p.startsWith('/src/')) return file(res, resolve(repo, 'src'), p.slice('/src'.length));
  send(res, 404, 'not found');
}).listen(port, '127.0.0.1', () => console.log(`http://127.0.0.1:${port}/`));
