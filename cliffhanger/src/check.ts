/**
 * The decoded sections against the game, tile by tile, on every frame of the TAS (STATUS §4).
 *   node --experimental-strip-types --no-warnings src/check.ts [step] [section …]
 *
 * For every world tile wholly inside the field (lines 0-175, above the status bar) the tile the
 * PPU shows there — its nametable cell, found through that line's scroll (machine.ts lineX/lineY)
 * — is compared with the decoded one: tile number and palette. The camera is the RAM's at line 0
 * of the frame: the screen's left column is world x $18/$19 - 8, its top line world y $1A/$1B.
 * Mismatches are counted per section and the first few printed; `DUMP=1` prints them all.
 */
import { Run } from './run.ts';
import { SECTIONS, section, tileAt, type Section } from './level.ts';
import { STARTS } from './render.ts';

const args = process.argv.slice(2).map(Number);
const step = args[0] || 1;
const wanted = new Set(args.length > 1 ? args.slice(1) : [...Array(SECTIONS).keys()]);
const FIELD = 176;

const run = new Run();
const m = run.m;
const ppu = m.ppu as unknown as { scanline(l: number): void; vram: Uint8Array; bank(n: number): number };
let cam = { x: 0, y: 0 };
const nt = new Uint8Array(0x1000);
// Who wrote each nametable byte last (the instruction's PRG offset), kept per physical VRAM byte
// and copied with the nametables: the tag a mismatch is explained by.
const writer = new Int32Array(0x1000).fill(-1);
const ntWriter = new Int32Array(0x1000);
let pc = 0;
m.hooks.exec = (p) => {
  pc = p;
};
// The camera the frame is drawn with: the RAM's when the NMI writes the scroll (the first $2005
// write in vblank) — by line 0 the main loop may have moved it on (STATUS §4).
let nmiCam = { x: 0, y: 0 };
let scrolled = false;
m.hooks.write = (a, v) => {
  if (a === 0x2005 && !scrolled && m.nes.line >= 241) {
    scrolled = true;
    nmiCam = { x: ((m.ram[0x19] << 8) | m.ram[0x18]) - 8, y: (m.ram[0x1b] << 8) | m.ram[0x1a] };
  }
  if (a !== 0x2007) return;
  const at = m.vramAddress;
  if (at < 0x2000 || at >= 0x3000) return;
  writer[ppu.bank((at >> 10) & 3) + (at & 0x3ff)] = m.prgOffset(pc);
};
const scanline = ppu.scanline.bind(ppu);
ppu.scanline = (line) => {
  if (line === 0) {
    cam = process.env.LINE0 ? { x: ((m.ram[0x19] << 8) | m.ram[0x18]) - 8, y: (m.ram[0x1b] << 8) | m.ram[0x1a] } : nmiCam;
    scrolled = false;
  }
  scanline(line);
  if (line === FIELD) {
    for (let n = 0; n < 4; n++) {
      nt.set(ppu.vram.subarray(ppu.bank(n), ppu.bank(n) + 0x400), n * 0x400);
      ntWriter.set(writer.subarray(ppu.bank(n), ppu.bank(n) + 0x400), n * 0x400);
    }
  }
};

/** The PPU's tile and palette at screen (sx, sy), through line sy's scroll. */
function shown(sx: number, sy: number): { tile: number; palette: number; by: number; attrBy: number } {
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

/** Mismatching tiles of a section on this frame at camera (x, y). */
function count(sec: Section, x: number, y: number): number {
  let n = 0;
  for (let ty = Math.max(0, Math.ceil(y / 8)); ty < sec.height && ty * 8 - y + 8 <= FIELD; ty++) {
    for (let tx = Math.max(0, Math.ceil(x / 8)); tx < sec.width && tx * 8 - x + 8 <= 256; tx++) {
      const want = tileAt(sec, tx, ty);
      const got = shown(tx * 8 - x + 4, ty * 8 - y + 4);
      if (got.tile !== want.tile || got.palette !== want.palette) n++;
    }
  }
  return n;
}

if (process.env.PROBE) {
  // PROBE=frame,…: the camera offsets that fit those frames best, beside the RAM's.
  for (const f of process.env.PROBE.split(',').map(Number)) {
    run.to(f);
    const sec = section(m.ram[0x40a]);
    let best = { n: Infinity, dx: 0, dy: 0 };
    for (let dy = -16; dy <= 16; dy++) for (let dx = -24; dx <= 24; dx++) {
      const n = count(sec, cam.x + dx, cam.y + dy);
      if (n < best.n) best = { n, dx, dy };
    }
    const r = m.ram;
    console.log(`f${f} s${r[0x40a]} ram cam ${cam.x},${cam.y} best dx ${best.dx} dy ${best.dy} (${best.n} differ, ${count(sec, cam.x, cam.y)} at 0,0)  now $18 ${(r[0x19] << 8) | r[0x18]} $40 ${((r[0x41] << 8) | r[0x40]) << 16 >> 16} lineX0 ${m.lineX[0]} lineY0 ${m.lineY[0]}`);
  }
  process.exit(0);
}

const DUMP = !!process.env.DUMP;
for (let s = 0; s < SECTIONS; s++) {
  if (!wanted.has(s)) continue;
  const sec: Section = section(s);
  const end = s + 1 < STARTS.length ? STARTS[s + 1] - 10 : 24900;
  let frames = 0;
  let tiles = 0;
  let bad = 0;
  const badFrames = new Set<number>();
  const examples: string[] = [];
  const byTile = new Map<string, number>();
  // Mismatches by kind: at the field's edge (a strip not drawn yet) or inside, and by the writer.
  const kinds = new Map<string, number>();
  let shifted = 0;
  const shifts = new Map<string, number>();
  for (let f = STARTS[s] + 2; f < end; f += step) {
    run.to(f);
    if (m.ram[0x40a] !== s) continue;
    frames++;
    // The camera the frame was drawn with: the RAM's, or within ±16 px of it when that fits better
    // (the RAM's Y runs a few pixels ahead of the picture while it moves: STATUS §4).
    let at = { x: cam.x, y: cam.y, n: count(sec, cam.x, cam.y) };
    if (at.n > 0 && !process.env.STRICT) {
      for (let dy = -16; dy <= 16 && at.n > 0; dy++) {
        for (let dx = -16; dx <= 16 && at.n > 0; dx += dy === 0 ? 1 : 4) {
          const n = count(sec, cam.x + dx, cam.y + dy);
          if (n < at.n) at = { x: cam.x + dx, y: cam.y + dy, n };
        }
      }
      if (at.n === 0) {
        shifted++;
        const k = `${at.x - cam.x},${at.y - cam.y}`;
        shifts.set(k, (shifts.get(k) ?? 0) + 1);
        continue;
      }
    }
    const view = { x: at.x, y: at.y };
    const tx0 = Math.max(0, Math.ceil(view.x / 8));
    const ty0 = Math.max(0, Math.ceil(view.y / 8));
    for (let ty = ty0; ty < sec.height && ty * 8 - view.y + 8 <= FIELD; ty++) {
      for (let tx = tx0; tx < sec.width && tx * 8 - view.x + 8 <= 256; tx++) {
        const sx = tx * 8 - view.x;
        const sy = ty * 8 - view.y;
        if (sx < 0 || sy < 0) continue;
        tiles++;
        const want = tileAt(sec, tx, ty);
        const got = shown(sx + 4, sy + 4);
        if (got.tile !== want.tile || got.palette !== want.palette) {
          bad++;
          badFrames.add(f);
          const edge = sx < 8 || sx >= 240 || sy < 8 || sy + 16 > FIELD;
          const what = got.tile !== want.tile ? `tile by ${got.by.toString(16)}` : `palette by ${got.attrBy.toString(16)}`;
          const kind = `${edge ? 'edge' : 'inside'} ${what}`;
          kinds.set(kind, (kinds.get(kind) ?? 0) + 1);
          const k = `${tx},${ty}`;
          byTile.set(k, (byTile.get(k) ?? 0) + 1);
          const line = `f${f} (${tx},${ty}) screen ${sx},${sy} shows ${got.tile.toString(16)}/${got.palette} map ${want.tile.toString(16)}/${want.palette}`;
          if (DUMP) console.log(line);
          else if (examples.length < 6) examples.push(line);
        }
      }
    }
  }
  const spots = [...byTile].sort((a, b) => b[1] - a[1]).slice(0, 8).map(([k, n]) => `${k}×${n}`).join(' ');
  const sh = [...shifts].sort((a, b) => b[1] - a[1]).slice(0, 6).map(([k, n]) => `${k}×${n}`).join(' ');
  console.log(`section ${s}: ${frames} frames; ${shifted} exact only shifted (${sh}); ${badFrames.size} frames differ, ${bad} tiles${bad ? `; most at ${spots}` : ''}`);
  for (const [k, n] of [...kinds].sort((a, b) => b[1] - a[1]).slice(0, 8)) console.log(`   ${n} ${k}`);
  if (process.env.EXAMPLES) for (const e of examples) console.log(`   ${e}`);
}
