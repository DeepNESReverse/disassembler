// The maps' player: Randil's TAS as FCEUX played it, drawn over the level maps (out/levels/index.html).
// Per frame the take gives the level, the camera, the sprite page, the palette and the sprite banks
// (src/take-pack.ts); the background inside the camera is drawn from the level's data (src/level.ts,
// read from the ROM here) with that frame's palette, the sprites from the sprite page with their
// banks. Nothing outside the camera moves: the game draws nothing there.
import { Level } from '/src/level.ts';
import { NES_RGB } from '/xrom-libs/nes/src/palette.ts';
import { Apu, mixApu, OutputFilters } from '/xrom-libs/nes/node_modules/@xromdev/apu/dist/index.js';

const $ = (id) => document.getElementById(id);
const ui = { play: $('tkPlay'), speed: $('tkSpeed'), seek: $('tkSeek'), label: $('tkLabel'), follow: $('tkFollow') };
const live = $('live'), ctx = live.getContext('2d');
const image = ctx.createImageData(256, 176), px = new Uint32Array(image.data.buffer);
const bgIndex = new Uint8Array(256 * 176);

let rom, prg, chr, levels, data, cells, frames, offsets, keys;
const state = new Uint8Array(512);
let frame = -1, playing = false, debt = 0, last = 0;
/** Each level's frames in the take: [first, last]. */
let spans = [];
let lastTrail = -1e9, lastRescued = '';

async function load() {
  ui.label.textContent = 'loading…';
  rom = new Uint8Array(await (await fetch('/rom')).arrayBuffer());
  prg = rom.subarray(16, 16 + rom[4] * 0x4000);
  chr = rom.subarray(16 + rom[4] * 0x4000);
  levels = Array.from({ length: 12 }, (_, n) => new Level(prg, n));
  const gz = await fetch('take/randil.bin.gz');
  const buf = new Uint8Array(await new Response(gz.body.pipeThrough(new DecompressionStream('gzip'))).arrayBuffer());
  data = buf;
  frames = buf[4] | (buf[5] << 8) | (buf[6] << 16) | (buf[7] << 24);
  const nCells = buf[8] | (buf[9] << 8);
  cells = [];
  let o = 10;
  for (let i = 0; i < nCells; i++, o += 2) cells.push(buf[o] | (buf[o + 1] << 8));
  // Every frame's offset, and the whole state every 600 frames, for seeking.
  offsets = new Uint32Array(frames);
  keys = [];
  const s = new Uint8Array(nCells);
  for (let f = 0; f < frames; f++) {
    offsets[f] = o;
    const count = buf[o] | (buf[o + 1] << 8);
    o += 2;
    for (let k = 0; k < count; k++, o += 3) s[buf[o] | (buf[o + 1] << 8)] = buf[o + 2];
    if (f % 600 === 0) keys.push(s.slice());
  }
  // Where each level starts: the first frame with that $A8 after the previous one's.
  const starts = [];
  const ss = new Uint8Array(nCells);
  let lv = -1;
  for (let f = 0; f < frames; f++) {
    let p = offsets[f];
    const count = data[p] | (data[p + 1] << 8);
    p += 2;
    for (let k = 0; k < count; k++, p += 3) ss[data[p] | (data[p + 1] << 8)] = data[p + 2];
    if (ss[0] !== lv) { lv = ss[0]; starts.push([lv, f]); }
  }
  // A level is played from the first frame the player's X/Y changes after $A8 took its value (the
  // loader puts him on the start once the card is over) to the last frame it changes before the
  // next level (the exit: then the tally and the next card, the player frozen).
  const raw = starts.map(([l, f], i) => [l, f, (starts[i + 1]?.[1] ?? frames) - 1]);
  const pos = new Uint8Array(nCells);
  const P = [0x420, 0x440, 0x460, 0x480].map((a) => cells.indexOf(a));
  const BG = Array.from({ length: 16 }, (_, i) => cells.indexOf(0x785 + i));
  const posAt = [], dark = new Uint8Array(frames);
  for (let f = 0; f < frames; f++) {
    let p = offsets[f];
    const count = data[p] | (data[p + 1] << 8);
    p += 2;
    for (let k = 0; k < count; k++, p += 3) pos[data[p] | (data[p + 1] << 8)] = data[p + 2];
    posAt.push(P.map((i) => pos[i]).join());
    // The level fading in from black: every background colour still $0F.
    dark[f] = BG.every((i) => pos[i] === 0x0f) ? 1 : 0;
  }
  spans = raw.filter(([l]) => l < 12).map(([l, a, b]) => {
    let s = a, e = b;
    while (s < b && posAt[s + 1] === posAt[a]) s++;
    while (e > s && posAt[e] === posAt[e - 1]) e--;
    s = Math.min(s + 1, b);
    while (s < e && dark[s]) s++;
    return [l, s, e];
  });
  const first = spans.find(([l]) => l === Number($('lvl').value) - 1) ?? spans[0];
  seek(first[1]);
}

/** The state after frame f. */
function seek(f) {
  const k = Math.floor(f / 600);
  state.set(keys[k]);
  for (let g = k * 600 + 1; g <= f; g++) apply(g);
  frame = f;
  draw();
}
function apply(f) {
  let p = offsets[f];
  const count = data[p] | (data[p + 1] << 8);
  p += 2;
  for (let k = 0; k < count; k++, p += 3) state[data[p] | (data[p + 1] << 8)] = data[p + 2];
}
const at = (addr) => state[cells.indexOf(addr)];
const C = {};
function cell(addr) { return (C[addr] ??= cells.indexOf(addr)); }
const get = (addr) => state[cell(addr)];
const rgb = (i) => { const c = NES_RGB[i & 0x3f]; return 0xff000000 | ((c & 0xff) << 16) | (c & 0xff00) | ((c >> 16) & 0xff); };

function draw() {
  const n = get(0xa8);
  const span = spans.find(([l, a, b]) => l === n && frame >= a && frame <= b);
  if (n > 11 || !span) {
    // A card, a tally, the menus: the game shows no level now.
    live.style.display = 'none';
    ui.label.textContent = `between levels (frame ${frame})`;
    return;
  }
  const level = levels[n];
  // The map follows the level the run is on.
  if (cur !== n + 1) { const sel = $('lvl'); sel.value = String(n + 1); pick(n + 1); }
  const camX = ((get(0x1a) | (get(0x1b) << 8)) << 16) >> 16, camY = ((get(0x1c) | (get(0x1d) << 8)) << 16) >> 16;
  const pal = (i) => get(0x785 + i);
  // Background inside the camera, from the level's data, with this frame's palette.
  const base = level.header.chr * 0x400;
  const backdrop = rgb(pal(0));
  const fx = ((camX % 8) + 8) % 8, fy = ((camY % 8) + 8) % 8;
  const tx0 = Math.floor(camX / 8), ty0 = Math.floor(camY / 8);
  for (let ty = 0; ty < 23; ty++)
    for (let tx = 0; tx < 33; tx++) {
      const wx = tx0 + tx, wy = ty0 + ty;
      const inside = wx >= 0 && wy >= 0 && wx < level.widthTiles && wy < level.heightTiles;
      const t = inside ? level.tile(wx, wy) : { tile: 0, palette: 0 };
      for (let y = 0; y < 8; y++) {
        const sy = ty * 8 + y - fy;
        if (sy < 0 || sy >= 176) continue;
        const lo = chr[base + t.tile * 16 + y], hi = chr[base + t.tile * 16 + y + 8];
        for (let x = 0; x < 8; x++) {
          const sx = tx * 8 + x - fx;
          if (sx < 0 || sx >= 256) continue;
          const c = inside ? ((lo >> (7 - x)) & 1) | (((hi >> (7 - x)) & 1) << 1) : 0;
          bgIndex[sy * 256 + sx] = c;
          px[sy * 256 + sx] = c ? rgb(pal(t.palette * 4 + c)) : backdrop;
        }
      }
    }
  // Sprites from the sprite page: 8 × 8 at $1000, banks R2 = $0718, R3 = $0719, R4 = $7B, R5 = $071A.
  const banks = [get(0x718), get(0x719), 0x7b, get(0x71a)];
  for (let k = 63; k >= 0; k--) {
    const y = get(0x200 + k * 4);
    if (y >= 0xef) continue;
    const tile = get(0x201 + k * 4), attr = get(0x202 + k * 4), x = get(0x203 + k * 4);
    const off = banks[tile >> 6] * 0x400 + ((tile * 16) & 0x3ff);
    for (let row = 0; row < 8; row++) {
      const sy = y + 1 + row;
      if (sy >= 176) break;
      const r = attr & 0x80 ? 7 - row : row;
      const lo = chr[off + r], hi = chr[off + r + 8];
      for (let col = 0; col < 8; col++) {
        const sx = x + col;
        if (sx >= 256) break;
        const bit = attr & 0x40 ? col : 7 - col;
        const c = ((lo >> bit) & 1) | (((hi >> bit) & 1) << 1);
        if (!c || (attr & 0x20 && bgIndex[sy * 256 + sx])) continue;
        px[sy * 256 + sx] = rgb(pal(0x10 + (attr & 3) * 4 + c));
      }
    }
  }
  ctx.putImageData(image, 0, 0);
  // The purple way: eaten by the player as he goes (the page redraws it from window.takeFrame).
  window.takeFrame = frame;
  // Prisoners rescued so far (their slot's flags 8): gone from the map's layer too.
  const rescued = [];
  for (let i = 0; i < 32; i++) if (get(0x400 + i) === 8) rescued.push(i);
  const key = n + ':' + rescued.join();
  if (key !== lastRescued) { lastRescued = key; window.takeRescued = new Set(rescued); showPrisoners(); }
  if (frame - lastTrail >= 4 || frame < lastTrail) { lastTrail = frame; showTas(); }
  live.style.left = camX * z + 'px';
  live.style.top = camY * z + 'px';
  live.style.width = 256 * z + 'px';
  live.style.height = 176 * z + 'px';
  live.style.display = 'block';
  // The slider runs over the level being played, its time from the level's first frame.
  {
    if (ui.seek.min !== String(span[1]) || ui.seek.max !== String(span[2])) { ui.seek.min = String(span[1]); ui.seek.max = String(span[2]); }
    ui.seek.value = String(frame);
    ui.label.textContent = `level ${n + 1} · ${((frame - span[1]) / 60.0988).toFixed(1)} of ${((span[2] - span[1] + 1) / 60.0988).toFixed(0)} s`;
  }
  // Keep the camera's field in view with room around it: on each axis the field stays inside the
  // middle of the window (a margin of 40 % of the space left over), the view easing after it rather
  // than jumping once the field has reached the edge. A seek or a new level: straight there.
  if (ui.follow.checked) {
    const w = $('wrap');
    const x = follow(w.scrollLeft, w.clientWidth, camX * z, 256 * z), y = follow(w.scrollTop, w.clientHeight, camY * z, 176 * z);
    if (x !== w.scrollLeft || y !== w.scrollTop) w.scrollTo(x, y);
  }
}
/** The scroll on one axis: `at` now, `size` the window, the field from `from`, `span` long. */
function follow(at, size, from, span) {
  const room = Math.max(0, size - span), margin = room * 0.4;
  if (room === 0) return from + span / 2 - size / 2;
  const lo = from + span + margin - size, hi = from - margin; // the scrolls that keep the margin
  if (at >= lo && at <= hi) return at;
  const want = at < lo ? lo : hi;
  if (Math.abs(want - at) > size) return want;
  // Ease, but never so slowly that the field itself leaves the window.
  const eased = at + (want - at) * 0.2;
  return Math.min(Math.max(eased, from + span - size), from);
}

// The sound: the run's writes to the sound chip (out/levels/take/randil-sound.bin.gz, src/sound-pack.ts,
// taken in FCEUX by fceux/movie_sound.lua), a frame's writes then a frame of samples through
// @xromdev/apu, an AudioWorklet (src/play/sound.js) playing the blocks. Only at ×1; after a seek or
// a change of speed, the 3 s before are run through the chip silently so it stands as it would.
// Each write carries its owner (src/sound-pack.ts): $80 an effect's, $40 the music's, 0 both's. A
// write whose owner is switched off is dropped, and its channel silenced once, so that a note the
// other owner left on it does not hang.
const HZ = 60.0988;
let sdata = null, soffs = null, snd = null, sampleDebt = 0, soundAt = -1;
async function loadSound() {
  const gz = await fetch('take/randil-sound.bin.gz');
  sdata = new Uint8Array(await new Response(gz.body.pipeThrough(new DecompressionStream('gzip'))).arrayBuffer());
  const n = sdata[4] | (sdata[5] << 8) | (sdata[6] << 16) | (sdata[7] << 24);
  soffs = new Uint32Array(n);
  for (let f = 0, o = 8; f < n; f++) { soffs[f] = o; o += 2 + 2 * (sdata[o] | (sdata[o + 1] << 8)); }
}
/** The DMC's samples: the fixed banks at $C000 (14) and $E000 (15). */
const dmcRead = (a) => (a >= 0xc000 ? prg[(a >= 0xe000 ? 15 : 14) * 0x2000 + (a & 0x1fff)] : 0);
async function startAudio() {
  if (snd || !$('tkSound').checked) return;
  if (!sdata) await loadSound();
  const context = new AudioContext({ latencyHint: 'interactive' });
  await context.audioWorklet.addModule('/src/play/sound.js');
  const node = new AudioWorkletNode(context, 'feed', { outputChannelCount: [1] });
  node.connect(context.destination);
  const rate = context.sampleRate, k = Math.ceil(rate / HZ) + 2;
  snd = { context, node, rate, chip: null, filters: null, lv: { pulse1: new Uint8Array(k), pulse2: new Uint8Array(k), triangle: new Uint8Array(k), noise: new Float64Array(k), dmc: new Uint8Array(k) } };
  preroll(frame);
}
function writesOf(f, each) {
  if (!soffs || f < 0 || f >= soffs.length) return;
  let p = soffs[f];
  const count = sdata[p] | (sdata[p + 1] << 8);
  p += 2;
  for (let i = 0; i < count; i++, p += 2) each(0x4000 + (sdata[p] & 0x3f), sdata[p + 1], sdata[p] & 0xc0);
}
/** Silenced: the channels (0-3) a dropped write left quiet, until a heard write comes to them. */
const quiet = new Set();
function hear(a, v, owner) {
  const music = $('tkMusic').checked, effects = $('tkEffects').checked;
  const ch = (a - 0x4000) >> 2;
  if ((owner === 0x40 && !music) || (owner === 0x80 && !effects)) {
    if (!quiet.has(ch)) { quiet.add(ch); snd.chip.write(0x4000 + ch * 4, ch === 2 ? 0x80 : 0x30); }
    return;
  }
  if (owner) quiet.delete(ch);
  snd.chip.write(a, v);
}
/** A fresh chip brought to frame f: the writes of the 3 s before, rendered and thrown away. */
function preroll(f) {
  if (!snd) return;
  snd.chip = new Apu(snd.rate, { memory: dmcRead });
  snd.filters = new OutputFilters(snd.rate, false);
  const per = Math.round(snd.rate / HZ);
  quiet.clear();
  for (let g = Math.max(0, f - 180); g <= f; g++) { writesOf(g, hear); snd.chip.render(per, snd.lv, 0); }
  soundAt = f;
}
function soundFrame(f) {
  if (!snd || !snd.chip) return;
  if (!$('tkSound').checked || Number(ui.speed.value) !== 1) { soundAt = -1; return; }
  if (soundAt !== f - 1) preroll(f - 1);
  writesOf(f, hear);
  sampleDebt += snd.rate / HZ;
  const count = Math.floor(sampleDebt);
  sampleDebt -= count;
  snd.chip.render(count, snd.lv, 0);
  const vol = Number($('tkVol').value), lv = snd.lv, out = new Float32Array(count);
  for (let i = 0; i < count; i++) out[i] = vol * 2.2 * snd.filters.step(mixApu(lv.pulse1[i], lv.pulse2[i], lv.triangle[i], lv.noise[i], lv.dmc[i]));
  snd.node.port.postMessage(out, [out.buffer]);
  soundAt = f;
}
$('tkSound').addEventListener('change', () => { if ($('tkSound').checked) startAudio(); });
// Switching music or effects back on: the chip brought anew to this frame, so a held note returns.
for (const id of ['tkMusic', 'tkEffects']) $(id).addEventListener('change', () => { soundAt = -1; });

function tick(now) {
  if (playing) {
    debt += Math.min(0.25, (now - last) / 1000) * 60.0988 * Number(ui.speed.value);
    while (debt >= 1 && frame < frames - 1) {
      apply(++frame);
      soundFrame(frame);
      debt -= 1;
      // Past a level's end (its exit): on to the next level's first frame, the tally and card skipped.
      const ended = spans.findIndex(([, , b]) => frame === b + 1);
      if (ended >= 0 && spans[ended + 1]) { seek(spans[ended + 1][1]); debt = 0; break; }
    }
    if (frame >= frames - 1) { playing = false; ui.play.textContent = '▶'; }
    draw();
  }
  last = now;
  requestAnimationFrame(tick);
}

ui.play.onclick = async () => {
  if (!data) await load();
  startAudio();
  // Not on a level (the menus, a card, a tally): straight to the start of the level the page shows.
  if (!spans.some(([, a, b]) => frame >= a && frame <= b)) {
    const span = spans.find(([l]) => l === Number($('lvl').value) - 1) ?? spans[0];
    seek(span[1]);
  }
  playing = !playing;
  ui.play.textContent = playing ? '⏸' : '▶';
  live.style.display = 'block';
};
ui.seek.oninput = () => { if (data) seek(Number(ui.seek.value)); };
requestAnimationFrame(tick);
// Choosing a level in the page's list takes the run to that level's start.
$('lvl').addEventListener('change', () => {
  if (!data) return;
  const span = spans.find(([l]) => l === Number($('lvl').value) - 1);
  if (span) seek(span[1]);
});

// Space plays and pauses — the only way to in full screen, where the header is hidden.
addEventListener('keydown', (e) => {
  if (e.code !== 'Space' || e.target.closest?.('input, select, textarea')) return;
  e.preventDefault();
  ui.play.click();
});
