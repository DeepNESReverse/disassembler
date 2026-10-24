/**
 * Past the layout's right edge (column 63): does the game show the next layout row's start — the
 * layout read on as one array, 64 bytes a row — or the same row again, or something else?
 * No-clip in level 1 to camera X ≈ 2100-2300 at Y 0, then every visible tile compared with three
 * readings of world column c ≥ 64 at row r: "next row" (c − 64, r + 1 block row), "same row"
 * (c − 64, r) and "the decoder's void" (outside).
 */
import { cardState } from '../teleport.ts';
import { Level, PAGE_TILES, PAGE_BLOCKS } from '../level.ts';
import { lead, noclip } from '../noclip.ts';

const { m } = cardState(0);
const level = new Level(m.cart.prg, 0);
let cur: [number, number] | null = null;
const put = noclip(m, () => cur);
m.nes.beforeVblank = put;
m.frames(1180 - 900);
const goal: [number, number] = [Number(process.argv[2] ?? 2200), 0];
for (let f = 0; f < 3000; f++) {
  cur = lead(m, goal);
  m.frame(0);
  const cx = ((m.ram[0x1a] | (m.ram[0x1b] << 8)) << 16) >> 16;
  if (Math.abs(cx - goal[0]) <= 2) break;
}
// A tile of the layout read as one array: block index = layout row · 64 + column, any column.
function linear(tx: number, ty: number, rowShift: number) {
  const r = ty % PAGE_TILES;
  const layoutRow = Math.floor(ty / PAGE_TILES) * PAGE_BLOCKS + (r >> 2);
  const bx = tx >> 2;
  const o = (layoutRow + rowShift) * 64 + (bx - 64);
  const id = m.cart.prg[level.header.layoutBank * 0x2000 + ((level.header.layout + o) & 0x1fff)];
  const h = level.header;
  return m.cart.prg[h.blocksBank * 0x2000 + ((h.tiles + id * 16 + (r & 3) * 4 + (tx & 3)) & 0x1fff)];
}
// Let the camera come to rest (it may still be catching up), then read it as the frame was drawn.
const r = m.ram;
for (let still = 0, last = -1; still < 20; ) {
  m.frame(0);
  const c = r[0x1a] | (r[0x1b] << 8) | (r[0x1c] << 16);
  still = c === last ? still + 1 : 0;
  last = c;
}
const camX = ((r[0x1a] | (r[0x1b] << 8)) << 16) >> 16, camY = ((r[0x1c] | (r[0x1d] << 8)) << 16) >> 16;
const ppu = m.ppu as unknown as { vram: Uint8Array; bank(n: number): number };
const score = { nextRow: 0, sameRow: 0, total: 0 };
for (let l = 4; l < 176; l += 8) {
  for (let x = 4; x < 256; x += 8) {
    const wx = camX + x, wy = camY + l;
    if (wx < 2048 + 8) continue;
    const px = (m.lineX[l] + x) % 512, ly = m.lineY[l];
    const tile = ppu.vram[ppu.bank((px >> 8) | (ly >= 240 ? 2 : 0)) + ((ly % 240) >> 3) * 32 + ((px & 255) >> 3)];
    score.total++;
    if (tile === linear(wx >> 3, wy >> 3, 1)) score.nextRow++;
    if (tile === linear(wx >> 3, wy >> 3, 0)) score.sameRow++;
  }
}
console.log(`camera ${camX},${camY}: tiles right of X 2048 compared ${score.total}; = next layout row's start ${score.nextRow}; = same row's start ${score.sameRow}`);
