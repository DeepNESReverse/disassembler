// The maps' page: the stage maps (out/stages/stageN.png) with TASVideos 5270M played over them.
// The run is packed by src/take-pack.ts from our exact replay: per frame the field's camera, the
// sprite memory, the palette and both nametable pages, and the sound chip's writes with their owner.
// The game's frame is drawn here as the PPU draws its field (from line 44: plane x = camera mod 512,
// y = the line, STATUS §3) and laid on the map at the camera.
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
/** Per stage (0-4): the frames it is played on, [first, last], and Charlie's way [x, y, frame]. */
let spans = [], paths = [];
let cur = 0, z = 1;

// ---------------------------------------------------------------------------- the map and zoom

function pick(n) {
  cur = n;
  const img = $('map');
  img.onload = () => { setZoom(); showPath(); };
  img.src = `/stages/stage${n}${$('marks').checked ? '-marks' : ''}.png`;
}
function setZoom() {
  const img = $('map'), w = $('wrap'), v = $('zoom').value;
  if (!img.naturalWidth) return;
  z = v === 'fitw' ? w.clientWidth / img.naturalWidth : v === 'fith' ? (w.clientHeight - 32) / img.naturalHeight : Number(v);
  if (document.body.classList.contains('full') && v === 'fith') z = w.clientHeight / img.naturalHeight;
  const W = img.naturalWidth * z, Hh = img.naturalHeight * z;
  $('stage').style.width = W + 'px';
  $('stage').style.height = Hh + 'px';
  img.style.width = W + 'px';
  img.style.height = Hh + 'px';
  const svg = $('path');
  svg.setAttribute('width', W);
  svg.setAttribute('height', Hh);
  svg.setAttribute('viewBox', `0 0 ${img.naturalWidth} ${img.naturalHeight}`);
  if (frame >= 0) draw();
}
$('zoom').onchange = setZoom;
addEventListener('resize', setZoom);
$('marks').onchange = () => pick(cur);
$('lvl').onchange = () => {
  const n = Number($('lvl').value);
  pick(n);
  if (data && spans[n - 1]) seek(spans[n - 1][0]);
};

// Charlie's way through the stage: the part still ahead of him (the page redraws it as he goes).
function showPath() {
  const svg = $('path');
  const way = paths[cur - 1];
  if (!$('showPath').checked || !way) { svg.innerHTML = ''; return; }
  const ahead = way.filter((p) => p[2] >= frame);
  const pts = (ahead.length ? ahead : way).map((p) => `${p[0]},${p[1]}`).join(' ');
  svg.innerHTML = `<polyline points="${pts}" fill="none" stroke="#f2b33d" stroke-width="2" stroke-opacity=".85" stroke-linejoin="round" vector-effect="non-scaling-stroke"/>`;
}
$('showPath').onchange = showPath;

// ---------------------------------------------------------------------------- the run

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
  offsets = new Uint32Array(frames);
  keys = [];
  const s = new Uint8Array(size);
  const firstLast = new Map();
  paths = [[], [], [], [], []];
  let o = 10;
  for (let f = 0; f < frames; f++) {
    offsets[f] = o;
    const count = data[o] | (data[o + 1] << 8);
    o += 2;
    for (let k = 0; k < count; k++, o += 3) s[data[o] | (data[o + 1] << 8)] = data[o + 2];
    o += 2 + 2 * (data[o] | (data[o + 1] << 8));
    if (f % 600 === 0) keys.push(s.slice());
    // A stage is shown while it is played (phase 5) or its bonus counted (8), its field at the camera.
    if ((s[1] === 5 || s[1] === 8) && s[4]) {
      const st = s[0];
      const span = firstLast.get(st) ?? [f, f];
      span[1] = f;
      firstLast.set(st, span);
      const way = paths[st];
      const cam = s[2] | (s[3] << 8);
      const p = [cam + s[7], s[8] - FIELD_TOP + 16, f];
      const q = way[way.length - 1];
      if (!q || q[0] !== p[0] || q[1] !== p[1]) way.push(p);
    }
  }
  spans = [0, 1, 2, 3, 4].map((st) => firstLast.get(st));
  seek(spans[cur - 1][0]);
}

function seek(f) {
  const k = Math.floor(f / 600);
  state.set(keys[k]);
  for (let g = k * 600 + 1; g <= f; g++) apply(g);
  frame = f;
  soundAt = -1;
  showPath();
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

/** The frame's field as the PPU draws it. */
function draw() {
  const stage = state[0], span = spans[stage];
  if (!span || frame < span[0] || frame > span[1]) {
    live.style.display = 'none';
    ui.label.textContent = `between stages (frame ${frame})`;
    return;
  }
  if (cur !== stage + 1) { $('lvl').value = String(stage + 1); pick(stage + 1); }
  const cam = state[2] | (state[3] << 8), ctrl = state[5], mask = state[6];
  const bgTable = (ctrl & 0x10) << 8, backdrop = rgb(pal(0));
  for (let line = 0; line < H; line++) {
    const py = FIELD_TOP + line, row = py >> 3, fy = py & 7;
    for (let x = 0; x < 256; x++) {
      const i = line * 256 + x;
      if (!(mask & 0x08) || (x < 8 && !(mask & 0x02))) { px[i] = backdrop; bgOpaque[i] = 0; continue; }
      const pxl = (cam + x) & 511, col = pxl >> 3, page = col >> 5, cx = col & 31;
      const tile = state[CIRAM + page * 0x400 + row * 32 + cx];
      const attr = state[CIRAM + page * 0x400 + 0x3c0 + (row >> 2) * 8 + (cx >> 2)];
      const p = (attr >> (((row & 2) << 1) | (cx & 2))) & 3;
      const a = bgTable + tile * 16 + fy, b = 7 - (pxl & 7);
      const c = ((chr[a] >> b) & 1) | (((chr[a + 8] >> b) & 1) << 1);
      bgOpaque[i] = c ? 1 : 0;
      px[i] = c ? rgb(pal(p * 4 + c)) : backdrop;
    }
  }
  if (mask & 0x10) {
    const tall = (ctrl & 0x20) !== 0, height = tall ? 16 : 8;
    for (let line = 0; line < H; line++) {
      const sy = FIELD_TOP + line;
      // The first eight sprites on the line; earlier ones over later ones.
      const found = [];
      for (let k = 0; k < 64 && found.length < 8; k++) {
        const r = sy - (state[OAM + k * 4] + 1);
        if (r >= 0 && r < height) found.push(k);
      }
      for (let n = found.length - 1; n >= 0; n--) {
        const k = found[n], tile = state[OAM + k * 4 + 1], attr = state[OAM + k * 4 + 2], sx = state[OAM + k * 4 + 3];
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
  live.style.left = cam * z + 'px';
  live.style.top = '0px';
  live.style.width = 256 * z + 'px';
  live.style.height = H * z + 'px';
  live.style.display = 'block';
  if (ui.seek.min !== String(span[0]) || ui.seek.max !== String(span[1])) { ui.seek.min = String(span[0]); ui.seek.max = String(span[1]); }
  ui.seek.value = String(frame);
  ui.label.textContent = `stage ${stage + 1} · ${((frame - span[0]) / HZ).toFixed(1)} of ${((span[1] - span[0] + 1) / HZ).toFixed(0)} s`;
  if (ui.follow.checked) {
    const w = $('wrap'), x = follow(w.scrollLeft, w.clientWidth, cam * z, 256 * z);
    if (x !== w.scrollLeft) w.scrollTo(x, w.scrollTop);
  }
}
/** The scroll on one axis: the field kept inside the middle of the window, the view easing after it. */
function follow(at, size, from, span) {
  const room = Math.max(0, size - span), margin = room * 0.4;
  if (room === 0) return from + span / 2 - size / 2;
  const lo = from + span + margin - size, hi = from - margin;
  if (at >= lo && at <= hi) return at;
  const want = at < lo ? lo : hi;
  if (Math.abs(want - at) > size) return want;
  const eased = at + (want - at) * 0.2;
  return Math.min(Math.max(eased, from + span - size), from);
}

// ---------------------------------------------------------------------------- the sound
// A frame's writes, then a frame of samples through @xromdev/apu into an AudioWorklet
// (src/play/sound.js). Only at 1×; after a seek the 3 s before are run through the chip silently.
// A write whose owner is switched off is dropped and its channel silenced once.
let snd = null, sampleDebt = 0, soundAt = -1;
async function startAudio() {
  if (snd || !$('tkSound').checked) return;
  const context = new AudioContext({ latencyHint: 'interactive' });
  await context.audioWorklet.addModule('/src/play/sound.js');
  const node = new AudioWorkletNode(context, 'feed', { outputChannelCount: [1] });
  node.connect(context.destination);
  const rate = context.sampleRate, k = Math.ceil(rate / HZ) + 2;
  snd = { context, node, rate, chip: null, filters: null, lv: { pulse1: new Uint8Array(k), pulse2: new Uint8Array(k), triangle: new Uint8Array(k), noise: new Float64Array(k), dmc: new Uint8Array(k) } };
}
function writesOf(f, each) {
  let p = offsets[f];
  p += 2 + 3 * (data[p] | (data[p + 1] << 8));
  const count = data[p] | (data[p + 1] << 8);
  p += 2;
  for (let i = 0; i < count; i++, p += 2) each(0x4000 + (data[p] & 0x3f), data[p + 1], data[p] & 0xc0);
}
const quiet = new Set();
function hear(a, v, owner) {
  const ch = (a - 0x4000) >> 2;
  if ((owner === 0x40 && !$('tkMusic').checked) || (owner === 0x80 && !$('tkEffects').checked)) {
    if (!quiet.has(ch)) { quiet.add(ch); snd.chip.write(0x4000 + ch * 4, ch === 2 ? 0x80 : 0x30); }
    return;
  }
  if (owner) quiet.delete(ch);
  snd.chip.write(a, v);
}
function preroll(f) {
  snd.chip = new Apu(snd.rate, { memory: () => 0 });
  snd.filters = new OutputFilters(snd.rate, false);
  const per = Math.round(snd.rate / HZ);
  quiet.clear();
  for (let g = Math.max(0, f - 180); g <= f; g++) { writesOf(g, hear); snd.chip.render(per, snd.lv, 0); }
  soundAt = f;
}
function soundFrame(f) {
  if (!snd) return;
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
for (const id of ['tkMusic', 'tkEffects']) $(id).addEventListener('change', () => { soundAt = -1; });

// ---------------------------------------------------------------------------- playing

let lastPath = -1e9;
function tick(now) {
  if (playing) {
    debt += Math.min(0.25, (now - last) / 1000) * HZ * Number(ui.speed.value);
    while (debt >= 1 && frame < frames - 1) {
      apply(++frame);
      soundFrame(frame);
      debt -= 1;
      // Past a stage's end: on to the next stage's first frame, the card skipped.
      const ended = spans.findIndex((s) => s && frame === s[1] + 1);
      if (ended >= 0 && spans[ended + 1]) { seek(spans[ended + 1][0]); debt = 0; break; }
    }
    if (frame >= frames - 1) { playing = false; ui.play.textContent = '▶'; }
    if (frame - lastPath >= 6 || frame < lastPath) { lastPath = frame; showPath(); }
    draw();
  }
  last = now;
  requestAnimationFrame(tick);
}
ui.play.onclick = async () => {
  if (!data) await load();
  await startAudio();
  const span = spans[cur - 1];
  if (span && (frame < span[0] || frame > span[1])) seek(span[0]);
  playing = !playing;
  ui.play.textContent = playing ? '⏸' : '▶';
};
ui.seek.oninput = () => { if (data) seek(Number(ui.seek.value)); };
requestAnimationFrame(tick);

// Space plays and pauses; full screen hides the bars until the mouse moves.
addEventListener('keydown', (e) => {
  if (e.code !== 'Space' || e.target.closest?.('input, select, textarea')) return;
  e.preventDefault();
  ui.play.click();
});
$('full').onclick = () => (document.fullscreenElement ? document.exitFullscreen() : document.documentElement.requestFullscreen());
let idle = 0;
document.addEventListener('fullscreenchange', () => { document.body.classList.toggle('full', !!document.fullscreenElement); setZoom(); });
addEventListener('mousemove', () => {
  document.body.classList.remove('idle');
  clearTimeout(idle);
  idle = setTimeout(() => document.body.classList.contains('full') && document.body.classList.add('idle'), 2000);
});

pick(1);
