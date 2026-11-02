/**
 * The maps' page on 127.0.0.1 (after ~/alien3-levels' src/play/server.ts).
 *
 *   node --experimental-strip-types src/play/server.ts [--port 4325]
 *
 * GET / the page (src/play/index.html); /stages/… the maps and the packed run (out/stages);
 * /src/… this repo's modules; /xrom-libs/nes/… the palette and @xromdev/apu; /chr the cartridge's
 * pattern tables, read in place (the ROM is never copied).
 */
import { createServer, type ServerResponse } from 'node:http';
import { existsSync, readFileSync, statSync } from 'node:fs';
import { extname, resolve, sep } from 'node:path';
import { stripTypeScriptTypes } from 'node:module';
import { romFile } from '../rom.ts';

const args = process.argv.slice(2);
const port = Number(args.includes('--port') ? args[args.indexOf('--port') + 1] : 4325);
const repo = resolve(import.meta.dirname, '../..');
const xrom = resolve(repo, '../xrom-libs/nes');

const TYPES: Record<string, string> = {
  '.png': 'image/png',
  '.html': 'text/html; charset=utf-8',
  '.ts': 'text/javascript; charset=utf-8',
  '.js': 'text/javascript; charset=utf-8',
  '.json': 'application/json',
  '.gz': 'application/gzip',
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
  const p = new URL(req.url ?? '/', 'http://localhost').pathname;
  if (p === '/' || p === '/index.html') return file(res, resolve(repo, 'src/play'), '/index.html');
  if (p.startsWith('/stages/')) return file(res, resolve(repo, 'out/stages'), p.slice('/stages'.length));
  if (p === '/chr') {
    const rom = romFile();
    return send(res, 200, rom.subarray(16 + rom[4] * 0x4000), 'application/octet-stream');
  }
  if (p.startsWith('/src/')) return file(res, resolve(repo, 'src'), p.slice(4));
  if (p.startsWith('/xrom-libs/nes/src/')) return file(res, resolve(xrom, 'src'), p.slice('/xrom-libs/nes/src'.length));
  if (p.startsWith('/xrom-libs/nes/node_modules/@xromdev/'))
    return file(res, resolve(xrom, 'node_modules/@xromdev'), p.slice('/xrom-libs/nes/node_modules/@xromdev'.length));
  send(res, 404, 'not found');
}).listen(port, '127.0.0.1', () => console.log(`Circus Charlie maps: http://127.0.0.1:${port}/`));
