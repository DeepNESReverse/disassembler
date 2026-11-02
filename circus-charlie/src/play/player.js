// The maps' player: TASVideos 5270M over the stage maps (src/play/index.html), behaving as
// ~/alien3-levels' src/take-player.js. The run is packed by src/take-pack.ts from our exact replay:
// per frame the field's camera, the sprite memory, the palette and both nametable pages, and the
// sound chip's writes with their owner. The field is drawn as the PPU draws it (from line 44:
// plane x = camera mod 512, y = the line, STATUS §3) and laid on the map at the camera.
// The page's script gives `cur`, `z`, `pick`, `showTas` and the controls.
import { NES_RGB } from '/xrom-libs/nes/src/palette.ts';
import { Apu, mixApu, OutputFilters } from '/xrom-libs/nes/node_modules/@xromdev/apu/dist/index.js';

const $ = (id) => document.getElementById(id);
const ui = { play: $('tkPlay'), speed: $('tkSpeed'), seek: $('tkSeek'), label: $('tkLabel'), follow: $('tkFollow') };
const FIELD_TOP = 44, H = 240 - FIELD_TOP, HZ = 60.0988;
const OAM = 16, PAL = 272, CIRAM = 304;
const live = $('live'), ctx = live.getContext('2d');
const image = ctx.createImageData(256, H), px = new Uint32Array(image.data.buffer);
const bgOpaque = new Uint8Array(256 * H);

let chr, data, frames, size, offsets, keys, state;
let frame = -1, playing = false, debt = 0, last = 0;
/** Each stage's frames in the run: [stage 1-5, first, last] — played (phase 5) or its bonus counted (8). */
let spans = [];
let lastTrail = -1e9;

async function gunzip(url) {
  const res = await fetch(url);
  return new Uint8Array(await new Response(res.body.pipeThrough(new DecompressionStream('gzip'))).arrayBuffer());
}

async function load() {
  ui.label.textContent = 'loading…';
  chr = new Uint8Array(await (await fetch('/chr')).arrayBuffer());
  data = await gunzip('/stages/take.bin.gz');
  frames = data[4] | (data[5] << 8) | (data[6] << 16) | (data[7] * 0x1000000);
  size = data[8] | (data[9] << 8);
  state = new Uint8Array(size);
  // Every frame's offset, and the whole state every 600 frames, for seeking.
  offsets = new Uint32Array(frames);
  keys = [];
  const s = new Uint8Array(size);
  const firstLast = new Map();
  let o = 10;
  for (let f = 0; f < frames; f++) {
    offsets[f] = o;
    const count = data[o] | (data[o + 1] << 8);
    o += 2;
    for (let k = 0; k < count; k++, o += 3) s[data[o] | (data[o + 1] << 8)] = data[o + 2];
    const writes = data[o] | (data[o + 1] << 8);
    o += 2;
    for (let k = 0; k < writes; k++, o += 2) {
      const reg = data[o] & 0x3f;
      if (reg === 0x15 || reg === 0x17) enables.push([f, reg, data[o + 1]]);
    }
    if (f % 600 === 0) keys.push(s.slice());
    // A stage is shown while its field is drawn at the camera: played (5) or its bonus counted (8).
    if ((s[1] === 5 || s[1] === 8) && s[4]) {
      const span = firstLast.get(s[0]) ?? [s[0] + 1, f, f];
      span[2] = f;
      firstLast.set(s[0], span);
    }
  }
  spans = [...firstLast.values()].sort((a, b) => a[0] - b[0]);
  const first = spans.find(([l]) => l === Number($('lvl').value)) ?? spans[0];
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

const rgb = (i) => { const c = NES_RGB[i & 0x3f]; return 0xff000000 | ((c & 0xff) << 16) | (c & 0xff00) | ((c >> 16) & 0xff); };
const pal = (i) => state[PAL + ((i & 0x13) === 0x10 ? i & 0x0f : i)];

function draw() {
  const n = state[0] + 1;
  const span = spans.find(([l, a, b]) => l === n && frame >= a && frame <= b);
  if (!span) {
    // A card, the title, the game starting: the game shows no stage now.
    live.style.display = 'none';
    ui.label.textContent = `between stages (frame ${frame})`;
    return;
  }
  // The map follows the stage the run is on.
  if (cur !== n) { $('lvl').value = String(n); pick(n); }
  const camX = state[2] | (state[3] << 8), ctrl = state[5], mask = state[6];
  // The background: both nametable pages as the frame has them, the field from line 44.
  const bgTable = (ctrl & 0x10) << 8, backdrop = rgb(pal(0));
  for (let line = 0; line < H; line++) {
    const py = FIELD_TOP + line, row = py >> 3, fy = py & 7;
    for (let x = 0; x < 256; x++) {
      const i = line * 256 + x;
      if (!(mask & 0x08) || (x < 8 && !(mask & 0x02))) { px[i] = backdrop; bgOpaque[i] = 0; continue; }
      const pxl = (camX + x) & 511, col = pxl >> 3, page = col >> 5, cx = col & 31;
      const tile = state[CIRAM + page * 0x400 + row * 32 + cx];
      const attr = state[CIRAM + page * 0x400 + 0x3c0 + (row >> 2) * 8 + (cx >> 2)];
      const p = (attr >> (((row & 2) << 1) | (cx & 2))) & 3;
      const a = bgTable + tile * 16 + fy, b = 7 - (pxl & 7);
      const c = ((chr[a] >> b) & 1) | (((chr[a + 8] >> b) & 1) << 1);
      bgOpaque[i] = c ? 1 : 0;
      px[i] = c ? rgb(pal(p * 4 + c)) : backdrop;
    }
  }
  // Sprites from the sprite memory: the first eight on a line, earlier ones over later ones.
  if (mask & 0x10) {
    const tall = (ctrl & 0x20) !== 0, height = tall ? 16 : 8;
    for (let line = 0; line < H; line++) {
      const sy = FIELD_TOP + line;
      const found = [];
      for (let k = 0; k < 64 && found.length < 8; k++) {
        const r = sy - (state[OAM + k * 4] + 1);
        if (r >= 0 && r < height) found.push(k);
      }
      for (let m = found.length - 1; m >= 0; m--) {
        const k = found[m], tile = state[OAM + k * 4 + 1], attr = state[OAM + k * 4 + 2], sx = state[OAM + k * 4 + 3];
        let r = sy - (state[OAM + k * 4] + 1);
        if (attr & 0x80) r = height - 1 - r;
        let base;
        if (tall) { base = ((tile & 1) << 12) | ((tile & 0xfe) << 4); if (r >= 8) { base += 16; r -= 8; } }
        else base = ((ctrl & 0x08) << 9) | (tile << 4);
        for (let j = 0; j < 8; j++) {
          const x = sx + j;
          if (x > 255 || (x < 8 && !(mask & 0x04))) continue;
          const bit = attr & 0x40 ? j : 7 - j;
          const c = ((chr[base + r] >> bit) & 1) | (((chr[base + r + 8] >> bit) & 1) << 1);
          if (!c || (attr & 0x20 && bgOpaque[line * 256 + x])) continue;
          px[line * 256 + x] = rgb(pal(16 + (attr & 3) * 4 + c));
        }
      }
    }
  }
  ctx.putImageData(image, 0, 0);
  // Charlie's way: eaten as he goes (the page redraws it from window.takeFrame).
  window.takeFrame = frame;
  if (frame - lastTrail >= 4 || frame < lastTrail) { lastTrail = frame; showTas(); }
  live.style.left = camX * z + 'px';
  live.style.top = '0px';
  live.style.width = 256 * z + 'px';
  live.style.height = H * z + 'px';
  live.style.display = 'block';
  // The slider runs over the stage being played, its time from the stage's first frame.
  if (ui.seek.min !== String(span[1]) || ui.seek.max !== String(span[2])) { ui.seek.min = String(span[1]); ui.seek.max = String(span[2]); }
  ui.seek.value = String(frame);
  ui.label.textContent = `stage ${n} · ${((frame - span[1]) / HZ).toFixed(1)} of ${((span[2] - span[1] + 1) / HZ).toFixed(0)} s`;
  // Keep the camera's field in view with room around it: on each axis the field stays inside the
  // middle of the window (a margin of 40 % of the space left over), the view easing after it rather
  // than jumping once the field has reached the edge. A seek or a new stage: straight there.
  if (ui.follow.checked) {
    const w = $('wrap');
    const x = follow(w.scrollLeft, w.clientWidth, camX * z, 256 * z), y = follow(w.scrollTop, w.clientHeight, 0, H * z);
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
// A zoom change on the page: the frame laid again at the new scale.
window.takeRedraw = () => { if (data && frame >= 0) draw(); };

// The sound: the run's writes to the sound chip, a frame's writes then a frame of samples through
// @xromdev/apu, an AudioWorklet (src/play/sound.js) playing the blocks. Only at ×1; after a seek or a
// change of speed, the 3 s before are run through the chip silently so it stands as it would.
// The channels are switched on once, at power-on ($4015 on frame 4): a chip brought anew is first
// given the last $4015/$4017 written before, or it stays silent.
// Each write carries its owner (src/take-pack.ts): $80 an effect's, $40 the music's, 0 both's. A
// write whose owner is switched off is dropped, and its channel silenced once, so that a note the
// other owner left on it does not hang.
const enables = [];
let snd = null, sampleDebt = 0, soundAt = -1;
async function startAudio() {
  if (snd || !$('tkSound').checked) return;
  const context = new AudioContext({ latencyHint: 'interactive' });
  await context.audioWorklet.addModule('/src/play/sound.js');
  const node = new AudioWorkletNode(context, 'feed', { outputChannelCount: [1] });
  node.connect(context.destination);
  const rate = context.sampleRate, k = Math.ceil(rate / HZ) + 2;
  snd = { context, node, rate, chip: null, filters: null, lv: { pulse1: new Uint8Array(k), pulse2: new Uint8Array(k), triangle: new Uint8Array(k), noise: new Float64Array(k), dmc: new Uint8Array(k) } };
  preroll(frame);
}
function writesOf(f, each) {
  if (!offsets || f < 0 || f >= frames) return;
  let p = offsets[f];
  p += 2 + 3 * (data[p] | (data[p + 1] << 8));
  const count = data[p] | (data[p + 1] << 8);
  p += 2;
  for (let i = 0; i < count; i++, p += 2) each(0x4000 + (data[p] & 0x3f), data[p + 1], data[p] & 0xc0);
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
/** A fresh chip brought to frame f: the channels switched on as the game left them, then the writes of the 3 s before, rendered and thrown away. */
function preroll(f) {
  if (!snd || !data) return;
  snd.chip = new Apu(snd.rate, { memory: () => 0 });
  snd.filters = new OutputFilters(snd.rate, false);
  const from = Math.max(0, f - 180);
  const lastOf = (reg) => enables.filter(([g, r]) => g < from && r === reg).pop();
  for (const reg of [0x17, 0x15]) { const e = lastOf(reg); if (e) snd.chip.write(0x4000 + reg, e[2]); }
  const per = Math.round(snd.rate / HZ);
  quiet.clear();
  for (let g = from; g <= f; g++) { writesOf(g, hear); snd.chip.render(per, snd.lv, 0); }
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
    debt += Math.min(0.25, (now - last) / 1000) * HZ * Number(ui.speed.value);
    while (debt >= 1 && frame < frames - 1) {
      apply(++frame);
      soundFrame(frame);
      debt -= 1;
      // Past a stage's end: on to the next stage's first frame, the card skipped.
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
  // Not on a stage (the title, a card): straight to the start of the stage the page shows.
  if (!spans.some(([, a, b]) => frame >= a && frame <= b)) {
    const span = spans.find(([l]) => l === Number($('lvl').value)) ?? spans[0];
    seek(span[1]);
  }
  playing = !playing;
  ui.play.textContent = playing ? '⏸' : '▶';
  live.style.display = 'block';
};
ui.seek.oninput = () => { if (data) seek(Number(ui.seek.value)); };
requestAnimationFrame(tick);
// Choosing a stage in the page's list takes the run to that stage's start.
$('lvl').addEventListener('change', () => {
  if (!data) return;
  const span = spans.find(([l]) => l === Number($('lvl').value));
  if (span) seek(span[1]);
});

// Space plays and pauses — the only way to in full screen, where the header is hidden.
addEventListener('keydown', (e) => {
  if (e.code !== 'Space' || e.target.closest?.('input, select, textarea')) return;
  e.preventDefault();
  ui.play.click();
});
