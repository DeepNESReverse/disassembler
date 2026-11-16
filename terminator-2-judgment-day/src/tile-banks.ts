/**
 * Which CHR bank the game draws each map tile with (STATUS §9). One set of banks a map is not
 * enough: in the steel mill the field's background banks (slots 2-3) turn the fans by cycling
 * 8/9, a/b, c/d, e/f a few frames each, and while the ladles of molten steel are in view the game
 * holds 28/29 instead — the ladles exist only in those — switching the lines below back to the fans'
 * set by the scanline IRQ; the elevator's car is drawn from 42/43 on its lines only.
 *
 * So, per area: a set of background banks that the field takes for a few frames at a time is an
 * animation (`ANIMATED`: its stretches at the field's top average under 30 frames), and a tile drawn
 * from it is drawn from the one frame render.ts looks at (`LOOK`) for the whole map, so a fan stays
 * one picture. A tile drawn from a set held longer gets that set's bank for its slot.
 *
 * From the packed run (out/levels/take.bin.gz, src/take-pack.ts): on every shown frame, every map tile
 * whose middle is in the field, the set of its line (the bank run through its middle). Per tile
 * `keep` decides.
 *   tileBanks(header) → Int16Array (tile row × tile columns): its own bank, or -1 (the look's)
 *   node --experimental-strip-types --no-warnings src/tile-banks.ts   (prints a summary)
 */
import { readFileSync } from 'node:fs';
import { gunzipSync } from 'node:zlib';
import { HEADERS, area, tileAt } from './level.ts';
import { BANKS, FIELD, SIZE } from './take-pack-layout.ts';

let counts: Map<number, Map<number, Map<number, number>>> | null = null;
/** In the counts: the tile was drawn from an animated set (or from the look's own). */
const FIELD_OWN = -1;
/** A set whose stretches at the field's top average fewer frames than this is an animation. */
const ANIMATED = 30;
/** Per header, the background sets found to be animations (printed by the summary). */
const animatedOf = new Map<number, Map<string, number>>();

/** Every shown frame of the packed run: its state, through `each`. */
function frames(each: (s: Uint8Array) => void) {
  const data = gunzipSync(readFileSync('out/levels/take.bin.gz'));
  const total = (data[4] | (data[5] << 8) | (data[6] << 16)) + 1;
  const size = data[8] | (data[9] << 8);
  if (size !== SIZE) throw new Error(`take.bin.gz has states of ${size}, not ${SIZE}`);
  const s = new Uint8Array(size);
  let o = 10;
  for (let f = 0; f < total; f++) {
    const n = data[o] | (data[o + 1] << 8);
    o += 2;
    for (let k = 0; k < n; k++, o += 3) s[data[o] | (data[o + 1] << 8)] = data[o + 2];
    o += 2 + 2 * (data[o] | (data[o + 1] << 8));
    if (s[0] < HEADERS && s[1]) each(s);
  }
}

const bgOf = (s: Uint8Array, r: number) => {
  const table = s[6] & 0x10 ? 4 : 0;
  return [0, 1, 2, 3].map((i) => s[BANKS + 9 * r + 1 + table + i]).join(',');
};

function count() {
  // The sets at the field's top, frame after frame: how long each holds.
  const stretches = new Map<number, Map<string, [number, number]>>();
  let last = '';
  let lastH = -1;
  frames((s) => {
    const k = bgOf(s, 0);
    if (k === last && s[0] === lastH) return;
    last = k;
    lastH = s[0];
    const m = stretches.get(s[0]) ?? new Map();
    stretches.set(s[0], m);
    const e = m.get(k) ?? [0, 0];
    e[1]++;
    m.set(k, e);
  });
  frames((s) => {
    const e = stretches.get(s[0])!.get(bgOf(s, 0))!;
    e[0]++;
  });
  for (const [h, m] of stretches) {
    const anim = new Map<string, number>();
    for (const [k, [n, times]] of m) if (n / times < ANIMATED) anim.set(k, n / times);
    animatedOf.set(h, anim);
  }
  const areas = Array.from({ length: HEADERS }, (_, h) => area(h));
  const all = new Map<number, Map<number, Map<number, number>>>();
  frames((s) => {
    const h = s[0];
    const a = areas[h];
    const anim = animatedOf.get(h)!;
    const x = ((s[3] << 8) | s[2]) << 16 >> 16;
    const y = ((s[5] << 8) | s[4]) << 16 >> 16;
    const table = s[6] & 0x10 ? 4 : 0;
    const runs = s[12];
    let byTile = all.get(h);
    if (!byTile) all.set(h, (byTile = new Map()));
    const W = a.cols * 2;
    for (let ty = Math.max(0, Math.ceil((y - 4) / 8)); ty < a.rows * 2; ty++) {
      const mid = ty * 8 + 4 - y;
      // The field's last tile row is left out: on some frames its lines are the status bar's, drawn
      // from the status bar's banks (2, 3).
      if (mid >= FIELD - 8) break;
      if (mid < 0) continue;
      let run = 0;
      for (let r = 1; r < runs; r++) if (s[BANKS + 9 * r] <= mid) run = r;
      const animated = anim.has(bgOf(s, run));
      for (let tx = Math.max(0, Math.ceil((x - 4) / 8)); tx < W; tx++) {
        const mx = tx * 8 + 4 - x;
        if (mx >= 256) break;
        if (mx < 0) continue;
        const { tile } = tileAt(a, tx, ty);
        const bank = animated ? FIELD_OWN : s[BANKS + 9 * run + 1 + table + (tile >> 6)];
        const key = ty * W + tx;
        let c = byTile.get(key);
        if (!c) byTile.set(key, (c = new Map()));
        c.set(bank, (c.get(bank) ?? 0) + 1);
      }
    }
  });
  return all;
}

/**
 * The bank kept for a tile: the field's own (-1) where it was drawn so at least as often as from any
 * one other bank; else that bank — but the status bar's banks 2 and 3 never win over another (the
 * game draws parts of the field from them only on its way between maps: black patches in the
 * hospital's corridors by the elevator).
 */
function keep(c: Map<number, number>): number {
  const own = c.get(FIELD_OWN) ?? 0;
  const others = [...c].filter(([b]) => b !== FIELD_OWN).sort((p, q) => q[1] - p[1]);
  const best = others.find(([b]) => b !== 2 && b !== 3) ?? others[0];
  return best && best[1] > own && !(own > 0 && (best[0] === 2 || best[0] === 3)) ? best[0] : FIELD_OWN;
}

/**
 * The elevator shaft (header 3) is left to the look's banks: its whole layout is the car over and
 * over, and the car the player sees is a window of banks 42/43 the IRQ moves down the shaft (lines
 * 65-154 on, `src/experiments/bank-runs.ts 3`) — kept per tile it would draw a car on every floor.
 */
const MOVING_WINDOW = new Set([3]);

export function tileBanks(header: number): Int16Array {
  counts ??= count();
  const a = area(header);
  const W = a.cols * 2;
  const out = new Int16Array(W * a.rows * 2).fill(-1);
  if (MOVING_WINDOW.has(header)) return out;
  for (const [key, c] of counts.get(header) ?? []) out[key] = keep(c);
  return out;
}

if (import.meta.url === `file://${process.argv[1]}`) {
  counts = count();
  for (const [h, byTile] of [...counts].sort((p, q) => p[0] - q[0])) {
    let mixed = 0;
    const banks = new Map<number, number>();
    for (const c of byTile.values()) {
      if (c.size > 1) mixed++;
      const b = keep(c);
      banks.set(b, (banks.get(b) ?? 0) + 1);
    }
    const list = [...banks].sort((p, q) => q[1] - p[1]).map(([b, n]) => `${b < 0 ? 'own' : b.toString(16)}×${n}`).join(' ');
    const anim = [...(animatedOf.get(h) ?? [])].map(([k, n]) => `${k} (${n.toFixed(1)} frames)`).join(' ');
    console.log(`header ${h}: ${byTile.size} tiles seen, ${mixed} drawn from more than one bank; banks kept: ${list}${anim ? `; animated: ${anim}` : ''}`);
  }
}
