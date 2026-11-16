/**
 * The decoded areas against the game, tile by tile, on frames of the TAS (STATUS §6).
 *   node --experimental-strip-types --no-warnings src/check.ts [step] [header …]
 *   PROBE=frame,… : the camera offset that fits those frames best, beside the RAM's camera
 *
 * The field is the screen lines drawn with the scroll of line 120 (the status bar has its own,
 * set by the scanline IRQ). For every world tile wholly inside the field, the tile the PPU shows
 * there — its nametable cell, found through that line's scroll (machine.ts lineX/lineY) — is
 * compared with the decoded one: tile number and palette. The camera is `$C4/$C5` (x) and `$C6/$C7`
 * (y) as the NMI writes the scroll, plus a fixed offset: 16, 0; the elevator shaft,
 * header 3, 40, 0 (PROBE gives the lowest of the 8 px the tile test fits, 13, -3; the place is the
 * one on the tiles' 8-px grid, STATUS §8). A frame where more than half the tiles differ shows
 * something else (a text screen, a fade, the building's explosion) and is counted apart.
 * The area is the header loaded last by `$A3E0`.
 * The flood channel (header 6) is a sheared corridor (STATUS §7); its picture is searched ±16 px.
 */
import { Run } from './run.ts';
import { HEADERS, area, tileAt, type Area } from './level.ts';

const args = process.argv.slice(2).map(Number);
const step = args[0] || 1;
const wanted = new Set(args.length > 1 ? args.slice(1) : [...Array(HEADERS).keys()]);
const offsetOf = (h: number) => ({ x: Number(process.env.DX ?? (h === 3 ? 40 : 16)), y: Number(process.env.DY ?? 0) });

const run = new Run();
const m = run.m;
const ppu = m.ppu as unknown as { scanline(l: number): void; vram: Uint8Array; bank(n: number): number };
const nt = new Uint8Array(0x1000);
const writer = new Int32Array(0x1000).fill(-1);
const ntWriter = new Int32Array(0x1000);
let pc = 0;
// The header loaded last (`$A3E0`, X = 2 × the header): `$D1` changes well before the load.
let loaded = -1;
m.hooks.exec = (p) => {
  pc = p;
  if (p === 0xa3e0 && m.prgOffset(p) === 0x63e0) loaded = m.cpu.x >> 1;
};
let nmiCam = { x: 0, y: 0 };
let cam = { x: 0, y: 0 };
let scrolled = false;
const camNow = () => ({ x: (m.ram[0xc5] << 8) | m.ram[0xc4], y: (m.ram[0xc7] << 8) | m.ram[0xc6] });
m.hooks.write = (a) => {
  if (a === 0x2005 && !scrolled && m.nes.line >= 241) {
    scrolled = true;
    nmiCam = camNow();
  }
  if (a !== 0x2007) return;
  const at = m.vramAddress;
  if (at < 0x2000 || at >= 0x3000) return;
  writer[ppu.bank((at >> 10) & 3) + (at & 0x3ff)] = m.prgOffset(pc);
};
const scanline = ppu.scanline.bind(ppu);
ppu.scanline = (line) => {
  if (line === 0) {
    cam = process.env.LINE0 ? camNow() : nmiCam;
    scrolled = false;
  }
  scanline(line);
  if (line === 239) {
    for (let n = 0; n < 4; n++) {
      nt.set(ppu.vram.subarray(ppu.bank(n), ppu.bank(n) + 0x400), n * 0x400);
      ntWriter.set(writer.subarray(ppu.bank(n), ppu.bank(n) + 0x400), n * 0x400);
    }
  }
};

/** The lines drawn with line 120's scroll, as [first, last] (the field). */
function field(): [number, number] {
  const fx = m.lineX[120];
  const fy = m.lineY[120] - 120;
  const same = (l: number) => m.lineX[l] === fx && (m.lineY[l] - l - fy) % 480 === 0;
  let a = 120;
  let b = 120;
  while (a > 0 && same(a - 1)) a--;
  while (b < 239 && same(b + 1)) b++;
  return [a, b];
}

function shown(sx: number, sy: number) {
  const px = (m.lineX[sy] + sx) & 511;
  const py = m.lineY[sy] % 480;
  const n = (px >> 8) | (py >= 240 ? 2 : 0);
  const col = (px & 255) >> 3;
  const row = (py % 240) >> 3;
  const tile = nt[n * 0x400 + row * 32 + col];
  const attr = nt[n * 0x400 + 0x3c0 + (row >> 2) * 8 + (col >> 2)];
  const palette = (attr >> ((((row >> 1) & 1) << 2) | (((col >> 1) & 1) << 1))) & 3;
  return { tile, palette, by: ntWriter[n * 0x400 + row * 32 + col], attrBy: ntWriter[n * 0x400 + 0x3c0 + (row >> 2) * 8 + (col >> 2)] };
}

/** Each world tile wholly in the field at camera (x, y): calls `each(tx, ty, sx, sy)`. */
function visit(a: Area, x: number, y: number, [top, bottom]: [number, number], each: (tx: number, ty: number, sx: number, sy: number) => void) {
  for (let ty = Math.max(0, Math.ceil((y + top) / 8)); ty < a.rows * 2 && ty * 8 - y + 7 <= bottom; ty++) {
    for (let tx = Math.max(0, Math.ceil(x / 8)); tx < a.cols * 2 && tx * 8 - x + 8 <= 256; tx++) each(tx, ty, tx * 8 - x, ty * 8 - y);
  }
}

function count(a: Area, x: number, y: number, f: [number, number]): number {
  let n = 0;
  visit(a, x, y, f, (tx, ty, sx, sy) => {
    const want = tileAt(a, tx, ty);
    const got = shown(sx + 4, sy + 4);
    if (got.tile !== want.tile || got.palette !== want.palette) n++;
  });
  return n;
}

if (process.env.PROBE) {
  for (const f of process.env.PROBE.split(',').map(Number)) {
    run.to(f);
    const h = loaded;
    const a = area(h);
    const fl = field();
    let best = { n: Infinity, dx: 0, dy: 0 };
    for (let dy = -64; dy <= 64; dy++) for (let dx = -64; dx <= 64; dx++) {
      const n = count(a, cam.x + dx, cam.y + dy, fl);
      if (n < best.n) best = { n, dx, dy };
    }
    console.log(`f${f} header ${h} cam ${cam.x},${cam.y} field ${fl.join('-')} best dx ${best.dx} dy ${best.dy}: ${best.n} differ (${count(a, cam.x, cam.y, fl)} at 0,0)`);
  }
  process.exit(0);
}

const DUMP = !!process.env.DUMP;
const stats = new Map<number, { frames: number; tiles: number; bad: number; badFrames: number; shifted: number; other: number; kinds: Map<string, number>; shifts: Map<string, number>; spots: Map<string, number>; examples: string[] }>();
for (let f = 1100; f < run.pads.length; f += step) {
  run.to(f);
  const h = loaded;
  if (h < 0 || !wanted.has(h)) continue;
  // Only frames in play: the field shows the area (rendering on, not a black or text screen).
  if ((m.lineMask[120] & 0x08) === 0) continue;
  const a = area(h);
  const fl = field();
  if (fl[1] - fl[0] < 64) continue;
  let s = stats.get(h);
  if (!s) stats.set(h, (s = { frames: 0, tiles: 0, bad: 0, badFrames: 0, shifted: 0, other: 0, kinds: new Map(), shifts: new Map(), spots: new Map(), examples: [] }));
  s.frames++;
  const off = offsetOf(h);
  const base = { x: cam.x + off.x, y: cam.y + off.y };
  let at = { ...base, n: count(a, base.x, base.y, fl) };
  if (at.n > 0 && !process.env.STRICT) {
    const R = h === 6 ? 16 : 8; // the bike moves 4 px a frame, and its picture runs further from the RAM
    for (let dy = -R; dy <= R && at.n > 0; dy++) {
      for (let dx = -R; dx <= R && at.n > 0; dx++) {
        const n = count(a, base.x + dx, base.y + dy, fl);
        if (n < at.n) at = { x: base.x + dx, y: base.y + dy, n };
      }
    }
    let all = 0;
    visit(a, at.x, at.y, fl, () => all++);
    if (at.n * 2 > all) {
      s.other++;
      continue;
    }
    if (at.n === 0) {
      s.shifted++;
      const k = `${at.x - base.x},${at.y - base.y}`;
      s.shifts.set(k, (s.shifts.get(k) ?? 0) + 1);
      continue;
    }
  }
  let badHere = 0;
  visit(a, at.x, at.y, fl, (tx, ty, sx, sy) => {
    s!.tiles++;
    const want = tileAt(a, tx, ty);
    const got = shown(sx + 4, sy + 4);
    if (got.tile === want.tile && got.palette === want.palette) return;
    s!.bad++;
    badHere++;
    const edge = sx < 8 || sx >= 240 || sy < fl[0] + 8 || sy + 16 > fl[1];
    const what = got.tile !== want.tile ? `tile by ${got.by.toString(16)}` : `palette by ${got.attrBy.toString(16)}`;
    const kind = `${edge ? 'edge' : 'inside'} ${what}`;
    s!.kinds.set(kind, (s!.kinds.get(kind) ?? 0) + 1);
    const k = `${tx},${ty}`;
    s!.spots.set(k, (s!.spots.get(k) ?? 0) + 1);
    const line = `f${f} (${tx},${ty}) screen ${sx},${sy} shows ${got.tile.toString(16)}/${got.palette} map ${want.tile.toString(16)}/${want.palette}`;
    if (DUMP) console.log(line);
    else if (s!.examples.length < 6) s!.examples.push(line);
  });
  if (badHere) s.badFrames++;
}
for (const [h, s] of [...stats].sort((p, q) => p[0] - q[0])) {
  const spots = [...s.spots].sort((p, q) => q[1] - p[1]).slice(0, 8).map(([k, n]) => `${k}×${n}`).join(' ');
  const sh = [...s.shifts].sort((p, q) => q[1] - p[1]).slice(0, 6).map(([k, n]) => `${k}×${n}`).join(' ');
  console.log(`header ${h}: ${s.frames} frames, ${s.other} showing something else; ${s.shifted} exact only shifted (${sh}); ${s.badFrames} frames differ, ${s.bad} of ${s.tiles} tiles${s.bad ? `; most at ${spots}` : ''}`);
  for (const [k, n] of [...s.kinds].sort((p, q) => q[1] - p[1]).slice(0, 8)) console.log(`   ${n} ${k}`);
  if (process.env.EXAMPLES) for (const e of s.examples) console.log(`   ${e}`);
}
