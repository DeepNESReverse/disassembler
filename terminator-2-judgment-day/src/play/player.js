// Terminator 2's run for the shared maps page (src/maps-run → libs/maps-run): goofydylan8's TAS over
// the area maps. The run is packed by src/take-pack.ts from this NES's replay of the movie (in step
// with FCEUX, STATUS §3): per frame the area, where its field lies on the area's map, the PPU's
// control and mask, the field's scroll, the MMC3's CHR banks line by line, the sprite memory, the
// palette and the four nametables, and the sound chip's writes with their owner (STATUS §8). The
// field (lines 0-219, above the status bar) is drawn as the PPU draws it and laid on the map.
//
// The page's levels are the maps of src/maps.ts in the game's order — level 1 the truck stop with the
// bar glued after it (scaled; the view zooms into it), level 3 the hospital: its corridors the map,
// its offices laid over them while the run is in one (the same plan without the walls), the
// elevator's frames laid between the two doors of the ride with their black clear; the others one
// area each. The run goes from map to map as the game loads them: its spans follow the loads.
import { NES_RGB } from '/libs/nes/src/palette.ts';
import { Apu, mixApu, OutputFilters } from '/libs/nes/node_modules/@xromdev/apu/dist/index.js';
import { mountRunPage } from '/src/maps-run/run-page.js';

const W = 256, H = 220;
const BANKS = 16, OAM = 96, PAL = 352, NT = 384;
const PUBLIC = !!window.CART_PACK;
const LEVELS = PUBLIC ? '' : '/levels/';
/**
 * The page's maps (src/maps.ts → maps.json): per level its pieces, each an area's picture at x, y,
 * and dx, dy from the area's own coordinates to the map's. Level 1 is the truck stop with the bar's
 * inside glued after its door.
 */
const MAPS = (await (await fetch(LEVELS + 'maps.json')).json()).levels;
const pieceOf = new Map();
for (const l of MAPS) for (const p of l.pieces) pieceOf.set(p.header, { n: l.n, ...p });
const levelOf = (h) => pieceOf.get(h)?.n ?? 1;
/** A level's picture: its pieces but the overlays and rides (they are drawn as the run goes). */
const baseOf = (l) => l.pieces.filter((p) => !p.overlay && !p.ride);
const mapOf = (l) => {
  const b = baseOf(l);
  return b.length === 1 && b[0].x === 0 && b[0].y === 0 && b[0].k === 1 ? LEVELS + b[0].src : { w: l.w, h: l.h, pieces: b.map((p) => ({ src: LEVELS + p.src, x: p.x, y: p.y, w: p.w, h: p.h })) };
};
const MAP = 88;
/** On a ride the lines above the car (the energy bar is at 22-28; the car never above 65) are left out. */
const RIDE_TOP = 32;
/** The overlay piece last shown (the hospital's offices), placed at the page's zoom by placeOverlay. */
let overlayPiece = null;

let image, px;
const bgOpaque = new Uint8Array(W * H);
let chr, data, frames, size, offsets, keys, state;

async function gunzip(url) {
  const res = await fetch(url);
  return new Uint8Array(await new Response(res.body.pipeThrough(new DecompressionStream('gzip'))).arrayBuffer());
}

const rgb = (i) => { const c = NES_RGB[i & 0x3f]; return 0xff000000 | ((c & 0xff) << 16) | (c & 0xff00) | ((c >> 16) & 0xff); };
const pal = (i) => state[PAL + ((i & 0x13) === 0x10 ? i & 0x0f : i)];
const i16 = (lo, hi) => ((hi << 8) | lo) << 16 >> 16;
/** The bank run a line is drawn with (its first byte: the run's first line). */
const runOf = (line) => {
  let r = 0;
  for (let k = 1; k < state[12]; k++) if (state[BANKS + 9 * k] <= line) r = k;
  return BANKS + 9 * r + 1;
};
/** A CHR byte at PPU address `a` through the banks of the run at `bank`. */
const chrAt = (bank, a) => chr[state[bank + (a >> 10)] * 0x400 + (a & 0x3ff)];

const run = {
  async load() {
    chr = PUBLIC ? await gunzip(window.CART_PACK) : new Uint8Array(await (await fetch('/chr')).arrayBuffer());
    data = await gunzip(LEVELS + 'take.bin.gz');
    frames = (data[4] | (data[5] << 8) | (data[6] << 16) | (data[7] * 0x1000000)) + 1;
    size = data[8] | (data[9] << 8);
    state = new Uint8Array(size);
    offsets = new Uint32Array(frames);
    keys = [];
    const s = new Uint8Array(size);
    const header = new Uint8Array(frames);
    let o = 10;
    for (let f = 0; f < frames; f++) {
      offsets[f] = o;
      const count = data[o] | (data[o + 1] << 8);
      o += 2;
      for (let k = 0; k < count; k++, o += 3) s[data[o] | (data[o + 1] << 8)] = data[o + 2];
      o += 2 + 2 * (data[o] | (data[o + 1] << 8));
      if (f % 600 === 0) keys.push(s.slice());
      header[f] = s[0];
    }
    // A span a load: from the frame after the span before (the first from power-on) to the frame
    // before the next load, so that the run goes on from map to map; the screens between levels
    // (mission texts, the weapon screen) are played on the map loaded before them.
    const spans = [];
    for (let f = 1; f < frames; f++) {
      const n = header[f] === 255 ? 1 : levelOf(header[f]);
      const last = spans[spans.length - 1];
      if (last && last[0] === n) last[2] = f;
      else spans.push([n, f, f]);
    }
    return { frames, spans };
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
  last: { x: 0, y: 0 },
  draw(f, ctx) {
    if (!image) { image = ctx.createImageData(W, H); px = new Uint32Array(image.data.buffer); }
    // Off the map (a text screen, a fade, the building's explosion) the window keeps its place, dark.
    if (!state[1]) {
      px.fill(0xff000000);
      ctx.putImageData(image, 0, 0);
      return run.last;
    }
    const ctrl = state[6], mask = state[7];
    const planeX = state[8] | (state[9] << 8), planeY = state[10] | (state[11] << 8);
    // On a ride (the elevator) the frame's black is left clear: the map shows around the car.
    const ride = !!pieceOf.get(state[0])?.ride;
    const backdrop = ride ? 0 : rgb(pal(0));
    const bgTable = (ctrl & 0x10) << 8;
    for (let line = 0; line < H; line++) {
      const bank = runOf(line);
      const py = (planeY + line) % 480, row = (py % 240) >> 3, fy = py & 7, top = py >= 240 ? 2 : 0;
      for (let x = 0; x < W; x++) {
        const i = line * W + x;
        // The left 8 columns the game hides (PPUMASK bit 1 clear) are left clear, the map showing through.
        if ((x < 8 && !(mask & 0x02)) || (ride && line < RIDE_TOP)) { px[i] = 0; bgOpaque[i] = 0; continue; }
        if (!(mask & 0x08)) { px[i] = backdrop; bgOpaque[i] = 0; continue; }
        const pxl = (planeX + x) & 511, cx = (pxl & 255) >> 3, base = NT + (top | (pxl >> 8)) * 0x400;
        const tile = state[base + row * 32 + cx];
        const attr = state[base + 0x3c0 + (row >> 2) * 8 + (cx >> 2)];
        const p = (attr >> (((row & 2) << 1) | (cx & 2))) & 3;
        const a = bgTable + tile * 16 + fy, b = 7 - (pxl & 7);
        const c = ((chrAt(bank, a) >> b) & 1) | (((chrAt(bank, a + 8) >> b) & 1) << 1);
        bgOpaque[i] = c ? 1 : 0;
        px[i] = c ? rgb(pal(p * 4 + c)) : backdrop;
      }
    }
    // Sprites from the sprite memory: the first eight on a line, earlier ones over later ones; their
    // tiles through the banks of the line (the IRQ switches the sprites' slot mid-frame).
    if (mask & 0x10) {
      const tall = (ctrl & 0x20) !== 0, height = tall ? 16 : 8;
      for (let line = 0; line < H; line++) {
        const bank = runOf(line);
        const found = [];
        for (let k = 0; k < 64 && found.length < 8; k++) {
          const r = line - (state[OAM + k * 4] + 1);
          if (r >= 0 && r < height) found.push(k);
        }
        for (let m = found.length - 1; m >= 0; m--) {
          if (ride && line < RIDE_TOP) continue;
          const k = found[m], tile = state[OAM + k * 4 + 1], attr = state[OAM + k * 4 + 2], sx = state[OAM + k * 4 + 3];
          let r = line - (state[OAM + k * 4] + 1);
          if (attr & 0x80) r = height - 1 - r;
          let base;
          if (tall) { base = ((tile & 1) << 12) | ((tile & 0xfe) << 4); if (r >= 8) { base += 16; r -= 8; } }
          else base = ((ctrl & 0x08) << 9) | (tile << 4);
          const lo = chrAt(bank, base + r), hi = chrAt(bank, base + r + 8);
          for (let j = 0; j < 8; j++) {
            const x = sx + j;
            if (x > 255 || (x < 8 && !(mask & 0x04))) continue;
            const bit = attr & 0x40 ? j : 7 - j;
            const c = ((lo >> bit) & 1) | (((hi >> bit) & 1) << 1);
            if (!c || (attr & 0x20 && bgOpaque[line * W + x])) continue;
            px[line * W + x] = rgb(pal(16 + (attr & 3) * 4 + c));
          }
        }
      }
    }
    ctx.putImageData(image, 0, 0);
    // Where the field lies on the level's map, as src/take-pack.ts placed it.
    run.last = { x: i16(state[MAP], state[MAP + 1]), y: i16(state[MAP + 2], state[MAP + 3]) };
    return run.last;
  },
  // A map piece drawn smaller than its area (the bar, glued into level 1 at its porch's height,
  // src/maps.ts): while the run is in it the game's frame is scaled the same, and the view zooms so
  // that the piece fills the window (the follow paused, the piece in the middle); out of it the zoom
  // and the follow come back — the way Cliffhanger shows its house.
  inside: null,
  zoomBefore: 0,
  followBefore: true,
  onFrame() {
    // An overlay piece (the hospital's offices): shown over the map while the run is in it.
    const o = pieceOf.get(state[0]);
    const over = document.getElementById('overlay');
    const on = !!(o?.overlay && page?.cur === o.n);
    if (on && over.dataset.src !== o.src) (over.dataset.src = o.src), (over.src = LEVELS + o.src), placeOverlay(o);
    over.classList.toggle('on', on);
    // On a ride (the elevator) the map dims, not to black — the hospital stays in view and the car,
    // drawn over the dimming, is what the eye goes to: as the game blacks out all but the car.
    document.getElementById('rideDim').classList.toggle('on', !!(o?.ride && page?.cur === o.n));
    const p = pieceOf.get(state[0]);
    const small = p && p.k !== 1 && page?.cur === p.n ? p : null;
    const live = document.getElementById('live');
    // The page sets the frame's transform each frame: the scale goes after it.
    if (small) live.style.transform += ` scale(${small.k})`;
    if (small === run.inside) return;
    run.inside = small;
    // After the page's frame: onFrame runs inside it, before it scrolls by the zoom and follow it
    // read at its start, which would undo these.
    if (page) setTimeout(() => run.view(small));
  },
  view(small) {
    const follow = document.getElementById('tkFollow');
    const zNum = document.getElementById('zNum');
    const wrap = document.getElementById('wrap');
    const setPct = (v) => { zNum.value = String(v); zNum.dispatchEvent(new Event('change')); };
    if (small) {
      if (!run.zoomBefore) {
        const on = document.querySelector('[data-z].on');
        run.zoomBefore = on ? on.dataset.z : Math.round(page.z * 100);
        run.followBefore = follow.checked;
      }
      follow.checked = false;
      // As near as the page zooms (4× at most) to the piece filling the window.
      setPct(Math.floor(Math.min(wrap.clientWidth / small.w, wrap.clientHeight / small.h) * 0.96 * 100));
      wrap.scrollTo((small.x + small.w / 2) * page.z - wrap.clientWidth / 2, (small.y + small.h / 2) * page.z - wrap.clientHeight / 2);
    } else if (run.zoomBefore) {
      follow.checked = run.followBefore;
      const was = run.zoomBefore;
      run.zoomBefore = 0;
      if (typeof was === 'string') document.querySelector(`[data-z="${was}"]`).click();
      else setPct(was);
    }
  },
  writesOf(f, each) {
    let p = offsets[f];
    p += 2 + 3 * (data[p] | (data[p + 1] << 8));
    const count = data[p] | (data[p + 1] << 8);
    p += 2;
    for (let i = 0; i < count; i++, p += 2) each(0x4000 + (data[p] & 0x3f), data[p + 1], data[p] & 0xc0);
  },
};

let page = null;
page = mountRunPage({
  title: 'Terminator 2: Judgment Day',
  levelWord: 'map',
  levels: MAPS.map((l) => ({ n: l.n, label: l.label })),
  image: (n) => mapOf(MAPS[n - 1]),
  field: { w: W, h: H },
  zoom: 'fith',
  run,
  apu: { Apu, mixApu, OutputFilters },
  soundWorklet: PUBLIC ? new URL('maps-run/sound.js', import.meta.url).href : '/src/maps-run/sound.js',
  runName: 'goofydylan8’s TAS',
  trail: { url: LEVELS + 'tas.json', label: 'route', title: 'TAS by goofydylan8 (TASVideos 2123M), played in FCEUX and replayed here frame for frame: the T-800&#39;s way' },
  runTitle: 'goofydylan8&#39;s TAS as the game plays it: the camera window shows the game&#39;s frame (the field as the PPU draws it, from our replay of the movie)',
  soundTitle: 'The run&#39;s music and sound effects: the game&#39;s sound-chip writes (the same as FCEUX&#39;s), played through @xromdev/apu. At ×1 only',
  musicTitle: 'The music: the driver&#39;s four music streams (PRG $10113-$10333, $10545-$1097D)',
  effectsTitle: 'The sound effects: the driver&#39;s two effect streams (PRG $10334-$10544, $1097E-$10ACF)',
  css: '#live{transform-origin:0 0}#overlay{opacity:0;transition:opacity .35s;pointer-events:none}#overlay.on{opacity:1}#rideDim{position:absolute;left:0;top:0;width:100%;height:100%;background:#000;opacity:0;transition:opacity .5s;pointer-events:none}#rideDim.on{opacity:.6}',
  layersBelow: '<img id="overlay" alt=""><div id="rideDim"></div>',
  onZoom: () => placeOverlay(),
  onPick: () => placeOverlay(),
  onMouse: (x, y) => {
    const l = MAPS[(page?.cur ?? 1) - 1];
    const p = l && baseOf(l).find((q) => x >= q.x && x < q.x + q.w && y >= q.y && y < q.y + q.h);
    const at = (v, d) => Math.round((v - d) / (p?.k ?? 1));
    document.getElementById('pos').textContent = p ? `${p.name} · x ${at(x, p.dx)} y ${at(y, p.dy)}` : `x ${x} y ${y}`;
  },
});

/** The overlay piece's picture on the map at the page's zoom (the last one shown, or `o`). */
function placeOverlay(o = overlayPiece) {
  overlayPiece = o;
  const im = document.getElementById('overlay');
  if (!im || !page) return;
  if (!o || page.cur !== o.n) {
    im.classList.remove('on');
    return;
  }
  Object.assign(im.style, { left: o.x * page.z + 'px', top: o.y * page.z + 'px', width: o.w * page.z + 'px' });
}
