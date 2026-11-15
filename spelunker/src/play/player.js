// Spelunker's run for the shared maps page (src/maps-run → ~/xrom-libs/maps-run): yuigenron2's TAS
// over the whole cave. Packed by src/take-pack.ts from our exact replay: per frame the camera, the
// plane scroll, the sprite memory, the palette, both nametables, and the sound chip's writes with
// their owner. The frame is drawn as the PPU draws it (no split: every line from the plane scroll,
// wrapping at 240 and 512) and laid on the cave at the camera.
// The public build (window.CART_PACK) reads no ROM: cart.bin.gz holds the pattern tables only.
import { NES_RGB } from '/xrom-libs/nes/src/palette.ts';
import { Apu, mixApu, OutputFilters } from '/xrom-libs/nes/node_modules/@xromdev/apu/dist/index.js';
import { mountRunPage, iconToggle } from '/src/maps-run/run-page.js';

const W = 256, H = 240;
const OAM = 16, PAL = 272, CIRAM = 304;
let image, px;
const bgOpaque = new Uint8Array(W * H);
let chr, data, frames, size, offsets, keys, state;
const PUBLIC = !!window.CART_PACK;
const DIR = PUBLIC ? '' : '/cave/';

async function gunzip(url) {
  const res = await fetch(url);
  return new Uint8Array(await new Response(res.body.pipeThrough(new DecompressionStream('gzip'))).arrayBuffer());
}
const rgb = (i) => { const c = NES_RGB[i & 0x3f]; return 0xff000000 | ((c & 0xff) << 16) | (c & 0xff00) | ((c >> 16) & 0xff); };
const pal = (i) => state[PAL + ((i & 0x13) === 0x10 ? i & 0x0f : i)];

// The items (src/items.py → items.json): every pick-up of the object table drawn on the cave with its
// own sprites, under the run's window, and each gone from the frame the game marks it taken ($0500 +
// its index going to 0 — so only those the spelunker really picked up, when he picked them up).
let items, itemCtx, itemFlags = '', takenAt;
const FLAGS = 2352;
let curFrame = 0;
function drawItems(force) {
  if (!items || !itemCtx || !chr) return;
  // Taken: the flag has gone from 255 to 0 by this frame (before the game sets them all, at power-on,
  // they are 0 and nothing is taken).
  const flags = items.items.map((it) => (takenAt && curFrame >= takenAt[it.i] ? 0 : 1)).join('');
  if (!force && flags === itemFlags) return;
  itemFlags = flags;
  const cv = itemCtx.canvas, img = itemCtx.createImageData(cv.width, cv.height), out = new Uint32Array(img.data.buffer);
  // The sprite colours of the cave (the palette as the run has it 600 frames in, items.json).
  const pals = items.palette;
  items.items.forEach((it, n) => {
    if (flags[n] === '0') return;
    for (const [dx, dy, tile, attr] of items.looks[it.type]) {
      const base = items.spriteTable | (tile << 4);
      for (let r = 0; r < 8; r++)
        for (let j = 0; j < 8; j++) {
          const rr = attr & 0x80 ? 7 - r : r, bit = attr & 0x40 ? j : 7 - j;
          const c = ((chr[base + rr] >> bit) & 1) | (((chr[base + rr + 8] >> bit) & 1) << 1);
          const x = it.x + dx + j, y = it.y + dy + r;
          if (!c || x < 0 || y < 0 || x >= cv.width || y >= cv.height) continue;
          out[y * cv.width + x] = rgb(pals[(attr & 3) * 4 + c]);
        }
    }
  });
  itemCtx.putImageData(img, 0, 0);
}

const run = {
  async load() {
    await ready;
    data = await gunzip(DIR + 'take.bin.gz');
    frames = data[4] | (data[5] << 8) | (data[6] << 16) | (data[7] * 0x1000000);
    size = data[8] | (data[9] << 8);
    state = new Uint8Array(size);
    offsets = new Uint32Array(frames);
    keys = [];
    const s = new Uint8Array(size);
    let first = -1, last = -1, o = 10;
    takenAt = new Array(256).fill(Infinity);
    const armed = new Uint8Array(256);
    for (let f = 0; f < frames; f++) {
      offsets[f] = o;
      const count = data[o] | (data[o + 1] << 8);
      o += 2;
      for (let k = 0; k < count; k++, o += 3) s[data[o] | (data[o + 1] << 8)] = data[o + 2];
      o += 2 + 2 * (data[o] | (data[o + 1] << 8));
      if (f % 600 === 0) keys.push(s.slice());
      for (let i = 0; i < 256; i++) {
        if (s[FLAGS + i] === 255) armed[i] = 1;
        else if (s[FLAGS + i] === 0 && armed[i] && takenAt[i] === Infinity) takenAt[i] = f;
      }
      if (s[4]) { if (first < 0) first = f; last = f; }
    }
    return { frames, spans: [[1, first, last]] };
  },
  seek(f) {
    const k = Math.floor(f / 600);
    state.set(keys[k]);
    for (let g = k * 600 + 1; g <= f; g++) run.apply(g);
  },
  apply(f) {
    let p = offsets[f];
    const count = data[p] | (data[p + 1] << 8);
    p += 2;
    for (let k = 0; k < count; k++, p += 3) state[data[p] | (data[p + 1] << 8)] = data[p + 2];
  },
  draw(f, ctx) {
    if (!image) { image = ctx.createImageData(W, H); px = new Uint32Array(image.data.buffer); }
    const camX = state[0] | (state[1] << 8), camY = state[2] | (state[3] << 8), ctrl = state[5], mask = state[6];
    const planeX = state[7] | (state[8] << 8), planeY = state[9];
    const bgTable = (ctrl & 0x10) << 8, backdrop = rgb(pal(0));
    for (let line = 0; line < H; line++) {
      const py = (planeY + line) % 240, row = py >> 3, fy = py & 7;
      for (let x = 0; x < W; x++) {
        const i = line * W + x;
        // The left 8 pixels the game hides (PPUMASK bit 1 off, as it plays): left clear, so the
        // map shows through instead of a black strip down the window's edge.
        if (x < 8 && !(mask & 0x02)) { px[i] = 0; bgOpaque[i] = 0; continue; }
        if (!(mask & 0x08)) { px[i] = backdrop; bgOpaque[i] = 0; continue; }
        const pxl = (planeX + x) & 511, col = pxl >> 3, page = col >> 5, cx = col & 31;
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
        const found = [];
        for (let k = 0; k < 64 && found.length < 8; k++) {
          const r = line - (state[OAM + k * 4] + 1);
          if (r >= 0 && r < height) found.push(k);
        }
        for (let m = found.length - 1; m >= 0; m--) {
          const k = found[m], tile = state[OAM + k * 4 + 1], attr = state[OAM + k * 4 + 2], sx = state[OAM + k * 4 + 3];
          let r = line - (state[OAM + k * 4] + 1);
          if (attr & 0x80) r = height - 1 - r;
          let base;
          if (tall) { base = ((tile & 1) << 12) | ((tile & 0xfe) << 4); if (r >= 8) { base += 16; r -= 8; } }
          else base = ((ctrl & 0x08) << 9) | (tile << 4);
          for (let j = 0; j < 8; j++) {
            const x = sx + j;
            if (x > 255 || (x < 8 && !(mask & 0x04))) continue;
            const bit = attr & 0x40 ? j : 7 - j;
            const c = ((chr[base + r] >> bit) & 1) | (((chr[base + r + 8] >> bit) & 1) << 1);
            if (!c || (attr & 0x20 && bgOpaque[line * W + x])) continue;
            px[line * W + x] = rgb(pal(16 + (attr & 3) * 4 + c));
          }
        }
      }
    }
    ctx.putImageData(image, 0, 0);
    return { x: camX, y: camY };
  },
  onFrame(f) { curFrame = f; drawItems(false); },
  writesOf(f, each) {
    let p = offsets[f];
    p += 2 + 3 * (data[p] | (data[p + 1] << 8));
    const count = data[p] | (data[p + 1] << 8);
    p += 2;
    for (let i = 0; i < count; i++, p += 2) each(0x4000 + (data[p] & 0x3f), data[p + 1], data[p] & 0xc0);
  },
};

mountRunPage({
  title: 'Spelunker',
  levelWord: 'cave',
  levels: [{ n: 1, label: 'The cave' }],
  image: () => `${DIR}cave.png`,
  field: { w: W, h: H },
  zoom: 'fitw',
  run,
  apu: { Apu, mixApu, OutputFilters },
  soundWorklet: PUBLIC ? new URL('maps-run/sound.js', import.meta.url).href : '/src/maps-run/sound.js',
  runName: 'yuigenron2’s TAS',
  trail: { url: DIR + 'tas.json', label: 'route', title: 'TAS by yuigenron2 (TASVideos), played from power-on in FCEUX and replayed here frame for frame; the spelunker&#39;s way down the cave' },
  runTitle: 'The TAS as the game plays it: the camera window shows the game&#39;s frame (as the PPU draws it, from our replay of the movie)',
  soundTitle: 'The run&#39;s music and sound effects: the game&#39;s sound-chip writes (the same as FCEUX&#39;s), played through @xromdev/apu. At ×1 only',
  musicTitle: 'The songs: sounds the game starts on two or more channels at once (the ten tunes)',
  effectsTitle: 'The sound effects: sounds the game starts on one channel (22 of them)',
  layersBelow: '<canvas id="items" width="448" height="2400" style="position:absolute;left:0;top:0;image-rendering:pixelated;pointer-events:none"></canvas>',
  // The cave's pick-ups: a round switch like the route's (maps-run's iconToggle).
  headerHtml: iconToggle({ id: 'itemsBox', label: 'items', colour: '#ffd166', checked: true, title: 'Every pick-up of the cave drawn where the game keeps it, each gone once the TAS has picked it up', icon: '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M6 3h12l3 6-9 12L3 9z"/><path d="M3 9h18M9 3l3 6 3-6M12 9v12"/></svg>' }),
  // The stage is the map's size at the zoom (set before onZoom; `page` is not there yet on the first call).
  onZoom: () => { const cv = document.getElementById('items'), st = document.getElementById('stage'); cv.style.width = st.style.width; cv.style.height = st.style.height; },
  onMouse: (x, y) => { document.getElementById('pos').textContent = `x ${x} y ${y} · tile ${x >> 3},${y >> 3}`; },
});

itemCtx = document.getElementById('items').getContext('2d');
// The pattern tables and the items before the run: the items are on the cave from the start.
const ready = (async () => {
  chr = PUBLIC ? await gunzip(window.CART_PACK) : new Uint8Array(await (await fetch('/chr')).arrayBuffer());
  items = await (await fetch(DIR + 'items.json')).json();
  drawItems(true);
})();
document.getElementById('itemsBox').onchange = (e) => { document.getElementById('items').style.display = e.target.checked ? '' : 'none'; };
