/**
 * The maps' page on 127.0.0.1 (after the Alien 3 folder' src/play/server.ts).
 *
 *   node --experimental-strip-types src/play/server.ts [--port 4328]
 *
 * GET / the page (src/play/index.html); /levels/… the maps and the packed run (out/levels);
 * /src/… this repo's modules; /xrom-libs/nes/… the palette and @xromdev/apu; /chr the cartridge's
 * pattern tables, read in place (the ROM is never copied). POST /joins: the seams set by eye on the
 * page ({ "a-b": { dx, dy } }) into data/joins-user.json, then src/world.ts lays the world anew.
 */
import { createServer, type ServerResponse } from 'node:http';
import { existsSync, readFileSync, statSync, writeFileSync } from 'node:fs';
import { execFileSync } from 'node:child_process';
import { extname, resolve, sep } from 'node:path';
import { stripTypeScriptTypes } from 'node:module';
import { romFile } from '../rom.ts';

const args = process.argv.slice(2);
const port = Number(args.includes('--port') ? args[args.indexOf('--port') + 1] : 4328);
const repo = resolve(import.meta.dirname, '../..');
const xrom = resolve(repo, 'libs/nes');

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
  if (p === '/joins' && req.method === 'POST') {
    let body = '';
    req.on('data', (c) => (body += c));
    req.on('end', () => {
      try {
        const joins = JSON.parse(body) as Record<string, { dx: number; dy: number }>;
        for (const [k, v] of Object.entries(joins)) {
          if (!/^\d+-\d+$/.test(k) || !Number.isFinite(v.dx) || !Number.isFinite(v.dy)) throw new Error(`bad join ${k}`);
        }
        writeFileSync(resolve(repo, 'data/joins-user.json'), JSON.stringify(joins, null, 1) + '\n');
        const out = execFileSync(process.execPath, ['--experimental-strip-types', '--no-warnings', 'src/world.ts'], { cwd: repo, encoding: 'utf8' });
        send(res, 200, out);
      } catch (e) {
        send(res, 400, String(e));
      }
    });
    return;
  }
  if (p === '/' || p === '/index.html') return file(res, resolve(repo, 'src/play'), '/index.html');
  if (p.startsWith('/levels/')) return file(res, resolve(repo, 'out/levels'), p.slice('/levels'.length));
  if (p === '/chr') {
    const rom = romFile();
    return send(res, 200, rom.subarray(16 + rom[4] * 0x4000), 'application/octet-stream');
  }
  if (p.startsWith('/src/')) return file(res, resolve(repo, 'src'), p.slice(4));
  if (p.startsWith('/xrom-libs/nes/src/')) return file(res, resolve(xrom, 'src'), p.slice('/xrom-libs/nes/src'.length));
  if (p.startsWith('/xrom-libs/nes/node_modules/@xromdev/'))
    return file(res, resolve(xrom, 'node_modules/@xromdev'), p.slice('/xrom-libs/nes/node_modules/@xromdev'.length));
  if (p.startsWith('/libs/')) return file(res, repo, p);
  send(res, 404, 'not found');
}).listen(port, '127.0.0.1', () => console.log(`Cliffhanger maps: http://127.0.0.1:${port}/`));
