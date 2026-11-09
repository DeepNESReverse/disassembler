/**
 * The prisoners' sprites as the game draws them: per level, one prisoner (object type 6, STATUS
 * §14) on screen during a no-clip flight, away from the player; the game's sprite buffer entries
 * near the object's screen place are drawn with the sprite palette and the CHR banks of their
 * lines, and their offset from the object's X/Y kept, so the viewer can draw the sprite
 * where the game does: out/levels/prisoners/<nn>.png + prisoners.json.
 *
 * The camera can be put only where it can stand: X anywhere with Y a page top (it moves
 * horizontally only so), or Y anywhere with X at an odd band's start (STATUS §11); the flight goes
 * from prisoner to prisoner until one is taken.
 *   node --experimental-strip-types src/prisoner-sprites.ts
 */
import { mkdirSync, readFileSync, writeFileSync } from 'node:fs';
import { encodePng } from '../libs/nes/src/png.ts';
import { NES_RGB } from '../libs/nes/src/palette.ts';
import { TRANSPARENT } from '../libs/nes/src/ppu.ts';
import { cardState } from './teleport.ts';
import { lead, noclip, route } from './noclip.ts';
import type { Machine } from './machine.ts';
import { LEVELS } from './level.ts';
/** Object type 6 (STATUS §14; objects.ts, which is a script, says the same). */
const PRISONER = 6;

type Obj = { i: number; x: number; y: number; type: number };
const objects = JSON.parse(readFileSync('out/levels/objects.json', 'utf8')) as Record<string, Obj[]>;
const camera = (m: Machine) => [((m.ram[0x1a] | (m.ram[0x1b] << 8)) << 16) >> 16, ((m.ram[0x1c] | (m.ram[0x1d] << 8)) << 16) >> 16] as [number, number];

/** A camera that shows (x, y) on the field (176 lines) and that the camera can stand on, or null. */
function screenFor(x: number, y: number): [number, number] | null {
  const top = Math.floor(y / 240) * 240;
  if (y - top >= 40 && y - top < 150) return [Math.max(0, Math.min(1792, Math.round((x - 128) / 4) * 4)), top];
  const band = Math.floor(x / 256);
  if (band % 2) return [band * 256, Math.max(0, Math.round((y - 100) / 4) * 4)];
  return null;
}

const result: Record<number, object> = {};
mkdirSync('out/levels/prisoners', { recursive: true });
for (let n = 0; n < LEVELS; n++) {
  const list = (objects[n + 1] ?? []).filter((o) => o.type === PRISONER);
  if (!list.length) continue;
  const { m } = cardState(n);
  let cur: [number, number] | null = null;
  m.nes.beforeVblank = noclip(m, () => cur);
  m.frames(1180 - 900);
  // Fly to each prisoner in turn; the first that is on screen, not rescued and far from the player
  // is taken with the camera at rest, from the game's sprite buffer at $0200 (sent to the PPU by
  // B15:$EC79). Taken while the camera moved, the offsets wandered by its speed (−6 … −14 px).
  const take = (): boolean => {
    const [cx, cy] = camera(m);
    const px = (m.ram[0x420] | (m.ram[0x440] << 8)) - cx, py = (m.ram[0x460] | (m.ram[0x480] << 8)) - cy;
    for (const o of list) {
      const sx = o.x - cx, sy = o.y - cy;
      if (sx < 24 || sx > 232 || sy < 24 || sy > 156 || m.ram[0x400 + o.i] === 8) continue;
      // Stop: the player held mid-screen — inside the camera's dead zone, screen X $68-$98
      // (B15:$FB2D) — 60 frames, so the camera comes to rest and the sprite buffer, the camera
      // and the picture agree. Not when the prisoner is near the middle (he would be touched).
      if (Math.abs(128 - sx) < 48 && Math.abs(88 - sy) < 56) continue;
      const hold: [number, number] = [cx + 128, cy + 88];
      for (let f = 0; f < 60; f++) { cur = hold; m.frame(0); }
      const [rx, ry] = camera(m);
      if (rx !== cx || ry !== cy || m.ram[0x400 + o.i] === 8) continue;
      const near: { x: number; y: number; tile: number; attr: number }[] = [];
      for (let k = 0; k < 64; k++) {
        const y = m.ram[0x200 + k * 4], tile = m.ram[0x201 + k * 4], attr = m.ram[0x202 + k * 4], x = m.ram[0x203 + k * 4];
        if (y >= 0xef) continue;
        // Not the player's: none within 40 px of him.
        if (Math.abs(x + 4 - px) < 40 && Math.abs(y + 1 - py) < 48) continue;
        if (Math.abs(x + 4 - sx) <= 16 && y + 1 - sy >= -32 && y + 1 - sy <= 24) near.push({ x, y: y + 1, tile, attr });
      }
      // The whole prisoner (7 sprites when it was first seen whole at rest), not a part at an edge.
      if (near.length < 7) continue;
      m.frame(0); // so that the PPU's line banks and palette are those this buffer is drawn with
      const s = m.ppu.snapshot();
      const x0 = Math.min(...near.map((e) => e.x)), y0 = Math.min(...near.map((e) => e.y));
      const w = Math.max(...near.map((e) => e.x)) - x0 + 8, h = Math.max(...near.map((e) => e.y)) - y0 + 8;
      const pix = new Uint32Array(w * h).fill(TRANSPARENT);
      const chr = m.cart.chr;
      const table = s.ctrl & 0x08 ? 0x1000 : 0;
      // Earlier entries win where they overlap, as on the PPU: drawn last to first.
      for (const e of [...near].reverse())
        for (let row = 0; row < 8; row++) {
          const rr = e.attr & 0x80 ? 7 - row : row;
          const a = table + e.tile * 16 + rr;
          const at = s.chrLines![Math.min(239, Math.max(0, e.y + row))][a >> 10] + (a & 0x3ff);
          const lo = chr[at], hi = chr[at + 8];
          for (let col = 0; col < 8; col++) {
            const bit = e.attr & 0x40 ? col : 7 - col;
            const c = ((lo >> bit) & 1) | (((hi >> bit) & 1) << 1);
            if (c) pix[(e.y - y0 + row) * w + (e.x - x0 + col)] = NES_RGB[s.palette[0x10 + (e.attr & 3) * 4 + c] & 0x3f];
          }
        }
      const nn = String(n + 1).padStart(2, '0');
      writeFileSync(`out/levels/prisoners/${nn}.png`, encodePng(pix, w, h));
      result[n + 1] = { object: o.i, sprites: near.length, dx: x0 - sx, dy: y0 - sy, w, h, frame: m.nes.frame, camera: [cx, cy] };
      console.log(`level ${n + 1}: object ${o.i} at ${o.x},${o.y} — ${near.length} sprites, ${w}×${h} at (${x0 - sx}, ${y0 - sy}) from its X/Y`);
      return true;
    }
    return false;
  };
  fly: for (const o of list) {
    const goal = screenFor(o.x, o.y);
    if (!goal) continue;
    for (const wp of route(camera(m), goal))
      for (let f = 0; f < 2500; f++) {
        cur = lead(m, wp);
        m.frame(0);
        if (take()) break fly;
        const [nx, ny] = camera(m);
        if (Math.abs(nx - wp[0]) <= 2 && Math.abs(ny - wp[1]) <= 2) break;
      }
  }
  if (!result[n + 1]) console.log(`level ${n + 1}: no prisoner brought on screen`);
}
writeFileSync('out/levels/prisoners.json', JSON.stringify(result, null, 1) + '\n');
