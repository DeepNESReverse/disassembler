/**
 * Check a level's decoding on frames played here (a seeded wander) or replayed from a take:
 *   node --experimental-strip-types src/check-run.ts <level 1-12> [--frames N] [--seed S] [--take file.play.txt]
 * Writes out/levels/<nn>-check.png (dark: never seen; red: differed at least once; orange: differed
 * only by showing the level a page away, the game's late rewrite — see check.ts `stale`) and
 * out/levels/<nn>-check.json (the numbers).
 */
import { mkdirSync, writeFileSync } from 'node:fs';
import { encodePng } from '../libs/nes/src/png.ts';
import { BUTTON } from './machine.ts';
import { Level } from './level.ts';
import { cardState, teleportOnBuild, loadState } from './teleport.ts';
import { renderLevel, loadCart } from './render.ts';
import { Checker } from './check.ts';

const args = process.argv.slice(2);
const opt = (k: string, d?: string) => (args.includes(k) ? args[args.indexOf(k) + 1] : d);
const n = Number(args[0]) - 1;
const total = Number(opt('--frames', '6000'));
let seed = Number(opt('--seed', '1'));
const rand = () => ((seed = (seed * 1103515245 + 12345) >>> 0) / 2 ** 32);

const cart = loadCart();
const level = new Level(cart.prg, n);
const teleports = args.includes('--teleport');
const { m, state } = cardState(n);
const checker = new Checker(m, level);
/** The level is up from frame 1180 of the path (a death's card is left out by the check's agreement test). */
m.nes.beforeVblank = () => checker.frame(m.ram[0xa8] === n && m.nes.frame >= 1180);

// The wander: a direction held 20-120 frames, A (jump) now and then, B (fire) half the time.
const dirs = [BUTTON.right, BUTTON.right, BUTTON.left, BUTTON.down, BUTTON.up, BUTTON.right | BUTTON.up, BUTTON.left | BUTTON.down];
let left = 0, held = 0;
function wander(frames: number) {
  for (let f = 0; f < frames; f++) {
    if (left-- <= 0) { held = dirs[Math.floor(rand() * dirs.length)] | (rand() < 0.5 ? BUTTON.B : 0); left = 20 + Math.floor(rand() * 100); }
    m.frame(held | (rand() < 0.05 ? BUTTON.A : 0));
  }
}
/** Screens worth starting on: not one block repeated all over. */
function interesting(cx: number, cy: number) {
  const ids = new Set<number>();
  for (let y = cy / 8; y < Math.min(level.heightTiles, cy / 8 + 22); y += 2) for (let x = cx / 8; x < Math.min(level.widthTiles, cx / 8 + 32); x += 2) ids.add(level.tile(x, y).tile);
  return ids.size > 1;
}
/** The numbers a part of the run added. */
const parts: Record<string, object> = {};
function part(name: string, run: () => void) {
  const a = checker.summary();
  run();
  const b = checker.summary();
  const d = (k: keyof typeof a) => (b[k] as number) - (a[k] as number);
  const samples = d('samples'), matched = d('matched'), stale = d('staleSamples');
  parts[name] = {
    frames: d('frames'), samples, matched, staleSamples: stale,
    matchPercent: +((100 * matched) / Math.max(1, samples)).toFixed(3),
    matchPercentStaleApart: +((100 * matched) / Math.max(1, samples - stale)).toFixed(3),
    writesChecked: d('writesChecked'), writesMatched: d('writesMatched'),
    attributeWritesChecked: d('attributeWritesChecked'), attributeWritesMatched: d('attributeWritesMatched'),
  };
}
// From the level's real start, no teleport.
part('start', () => {
  checker.attach();
  checker.tag = 'start';
  m.frames(1180 - 900);
  wander(total);
});
if (teleports) part('teleports', () => {
  const per = Number(opt('--per', '240'));
  let count = 0;
  // Page tops only: the first screen is built from nametable row 0 (see teleport.ts).
  for (let cy = 0; cy < level.heightTiles * 8; cy += 240)
    for (let cx = 0; cx < 2048 - 256 + 1; cx += Number(opt("--step", "224"))) {
      if (!interesting(cx, cy)) continue;
      loadState(m, state);
      checker.restart();
      checker.attach();
      checker.tag = `tp ${cx},${cy}`;
      teleportOnBuild(m, level, cx, cy);
      m.frames(1180 - 900);
      const before = { s: checker.samples - checker.outside - checker.notBuiltTiles, ok: checker.matched, f: checker.frames, k: checker.framesSkipped, chr: checker.chrMismatchLines, nb: checker.notBuiltTiles, pal: checker.paletteFrames };
      wander(per);
      if (process.env.EACH) {
        const s = checker.samples - checker.outside - checker.notBuiltTiles - before.s, ok = checker.matched - before.ok;
        const r = m.ram;
        console.log(`tp ${cx},${cy}: ${(100 * ok / Math.max(1, s)).toFixed(1)}% of ${s}, frames ${checker.frames - before.f} skipped ${checker.framesSkipped - before.k}; cam now ${r[0x1a] | r[0x1b] << 8},${((r[0x1c] | r[0x1d] << 8) << 16) >> 16}; chr lines ${checker.chrMismatchLines - before.chr}, not built ${checker.notBuiltTiles - before.nb}, other palette ${checker.paletteFrames - before.pal}`);
      }
      count++;
    }
  console.log(`${count} teleports`);
});

const s = { ...checker.summary(), parts };
console.log(s);
if (process.env.SCROLL) console.log(checker.scrollFrames);
const nn = String(n + 1).padStart(2, '0');
mkdirSync('out/levels', { recursive: true });
writeFileSync(`out/levels/${nn}-check.json`, JSON.stringify(s, null, 2) + '\n');
mkdirSync('runs/check', { recursive: true });
writeFileSync(`runs/check/${nn}-examples.json`, JSON.stringify(checker.examples));
writeFileSync(`runs/check/${nn}-write-examples.json`, JSON.stringify(checker.writeExamples));
const { pixels, width, height } = renderLevel(level, cart.chr);
const W = level.widthTiles;
for (let y = 0; y < height; y++)
  for (let x = 0; x < width; x++) {
    const cell = (y >> 3) * W + (x >> 3);
    const i = y * width + x;
    const p = pixels[i];
    const [r, g, b] = [(p >> 16) & 255, (p >> 8) & 255, p & 255];
    if (checker.differed[cell]) pixels[i] = (Math.min(255, 128 + (r >> 1)) << 16) | ((g >> 2) << 8) | (b >> 2);
    else if (checker.stale[cell]) pixels[i] = (Math.min(255, 128 + (r >> 1)) << 16) | (Math.min(255, 64 + (g >> 1)) << 8) | (b >> 2);
    else if (!checker.seen[cell]) pixels[i] = ((r >> 2) << 16) | ((g >> 2) << 8) | (b >> 2);
  }
writeFileSync(`out/levels/${nn}-check.png`, encodePng(pixels, width, height));
