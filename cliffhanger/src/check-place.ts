/**
 * Where on the decoded map is the field the game shows? For movie frames of the TAS (every `step`
 * frames of each section), the background the PPU drew (lines 0-175, above the status bar) is
 * matched against the whole section drawn by render.ts: x is tried at camera X ($40/$41) + dx,
 * y everywhere. Prints the best place, how many sampled pixels differ there, and the RAM cells
 * whose value is the found y (the camera Y).
 *   node --experimental-strip-types --no-warnings src/check-place.ts [step] [section …]
 */
import { TRANSPARENT } from '../libs/nes/src/ppu.ts';
import { NES_RGB } from '../libs/nes/src/palette.ts';
import { Run } from './run.ts';
import { SECTIONS } from './level.ts';
import { STARTS, drawSection, lookAt } from './render.ts';

const args = process.argv.slice(2).map(Number);
const step = args[0] || 120;
const wanted = args.length > 1 ? args.slice(1) : [...Array(SECTIONS).keys()];
const LINES = 176;
const run = new Run();
const m = run.m;
const signed = (lo: number, hi: number) => ((hi << 8) | lo) << 16 >> 16;
let candidates: Map<number, number> | null = null;

for (const s of wanted) {
  const look = lookAt(run, STARTS[s] + 150);
  const map = drawSection(s, look, m.cart.chr);
  const end = s + 1 < STARTS.length ? STARTS[s + 1] - 40 : 24900;
  let worst = 0;
  const rows: string[] = [];
  for (let f = STARTS[s] + 160; f < end; f += step) {
    run.to(f);
    const bg = m.ppu.background;
    const backdrop = NES_RGB[m.ppu.palette[0] & 0x3f];
    const camX = signed(m.ram[0x40], m.ram[0x41]);
    let best = { n: Infinity, dx: 0, y: 0 };
    for (let dx = -16; dx <= 16; dx++) {
      for (let y = 0; y + LINES <= map.height; y++) {
        let n = 0;
        for (let line = 0; line < LINES && n < best.n; line += 3) {
          for (let x = 0; x < 256; x += 3) {
            const wx = camX + dx + x;
            if (wx < 0 || wx >= map.width) continue;
            const ours = bg[line * 256 + x] === TRANSPARENT ? backdrop : bg[line * 256 + x];
            if (ours !== map.pixels[(y + line) * map.width + wx]) n++;
          }
        }
        if (n < best.n) best = { n, dx, y };
      }
    }
    worst = Math.max(worst, best.n);
    // RAM cells (and pairs) equal to the found y, kept across frames.
    const here = new Map<number, number>();
    for (let a = 0; a < 0x7ff; a++) {
      if (m.ram[a] === (best.y & 0xff)) here.set(a, 1);
      if (signed(m.ram[a], m.ram[a + 1]) === best.y) here.set(0x10000 | a, 1);
    }
    candidates = candidates ? new Map([...candidates].filter(([k]) => here.has(k))) : here;
    rows.push(`${f}:${best.dx},${best.y}${best.n ? `(${best.n})` : ''}`);
  }
  console.log(`section ${s}: worst ${worst} of ~${Math.ceil(LINES / 3) * 86} samples  ${rows.join(' ')}`);
}
const name = (k: number) => (k & 0x10000 ? `word $${(k & 0xffff).toString(16)}` : `$${k.toString(16)}`);
console.log(`camera Y candidates: ${[...(candidates ?? [])].map(([k]) => name(k)).join(' ')}`);
