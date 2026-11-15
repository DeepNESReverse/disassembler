// The maps' page (out/levels/index.html, src/viewer.py): the shared maps page (src/maps-run, i.e.
// ~/xrom-libs/maps-run — the header, zoom, the run bar, full screen, following, the sound) fed with
// Randil's TAS, plus Alien 3's own layers: the prisoners, what is hidden from the player, the camera
// rails and the whole address space.
// The run: per frame the take gives the level, the camera, the sprite page, the palette and the
// sprite banks (src/take-pack.ts); the background inside the camera is drawn from the level's data
// (src/level.ts, read from the ROM here) with that frame's palette, the sprites from the sprite page
// with their banks. Nothing outside the camera moves: the game draws nothing there.
// The public build (src/public.ts, window.CART_PACK set) reads no ROM: cart.bin.gz gives each
// level's tiles and palettes, the CHR banks the run draws with and the DMC's samples.
// The page gives (src/viewer.py): window.A3 = { levels, spaces, prisoners, sprites, public }.
import { Level } from '/src/level.ts';
import { NES_RGB } from '/xrom-libs/nes/src/palette.ts';
import { Apu, mixApu, OutputFilters } from '/xrom-libs/nes/node_modules/@xromdev/apu/dist/index.js';
import { mountRunPage, iconToggle } from '/src/maps-run/run-page.js';

const { levels: LEVEL_LIST, spaces: SPACES, prisoners: PRISONERS, sprites: SPRITES, public: PUBLIC } = window.A3;
const $ = (id) => document.getElementById(id);

// ---------------------------------------------------------------------------- the run

let rom, prg, chr, levels, data, cells, frames, offsets, keys;
const state = new Uint8Array(512);
let image, px;
const bgIndex = new Uint8Array(256 * 176);
let lastRescued = '';

async function gunzip(url) {
  const gz = await fetch(url);
  return new Uint8Array(await new Response(gz.body.pipeThrough(new DecompressionStream('gzip'))).arrayBuffer());
}

/**
 * cart.bin.gz (src/public.ts): u32 CHR size, u32 PRG size, the CHR and the PRG — zero but for the
 * banks the run draws with and the DMC's samples — then per level the CHR bank of its tiles (u8),
 * its width and height in tiles (u16 each), a tile number and a palette byte per tile, row by row.
 */
async function loadPack(url) {
  const b = await gunzip(url);
  const u32 = (o) => b[o] | (b[o + 1] << 8) | (b[o + 2] << 16) | (b[o + 3] * 0x1000000);
  let o = 8;
  chr = b.subarray(o, o + u32(0)); o += u32(0);
  prg = b.subarray(o, o + u32(4)); o += u32(4);
  levels = [];
  for (let n = 0; n < 12; n++) {
    const bank = b[o], w = b[o + 1] | (b[o + 2] << 8), h = b[o + 3] | (b[o + 4] << 8);
    const tiles = b.subarray(o + 5, o + 5 + w * h), pals = b.subarray(o + 5 + w * h, o + 5 + 2 * w * h);
    o += 5 + 2 * w * h;
    levels.push({ header: { chr: bank }, widthTiles: w, heightTiles: h, tile: (x, y) => ({ tile: tiles[y * w + x], palette: pals[y * w + x] }) });
  }
}

const C = {};
const cell = (addr) => (C[addr] ??= cells.indexOf(addr));
const get = (addr) => state[cell(addr)];
const rgb = (i) => { const c = NES_RGB[i & 0x3f]; return 0xff000000 | ((c & 0xff) << 16) | (c & 0xff00) | ((c >> 16) & 0xff); };

// The sound: the run's writes to the sound chip (out/levels/take/randil-sound.bin.gz, src/sound-pack.ts,
// taken in FCEUX by fceux/movie_sound.lua), each with its owner ($80 an effect's, $40 the music's, 0 both's).
let sdata = null, soffs = null;
/** The DMC's samples: the fixed banks at $C000 (14) and $E000 (15). */
const dmcRead = (a) => (a >= 0xc000 ? prg[(a >= 0xe000 ? 15 : 14) * 0x2000 + (a & 0x1fff)] : 0);

const run = {
  async load() {
    if (window.CART_PACK) await loadPack(window.CART_PACK);
    else {
      rom = new Uint8Array(await (await fetch('/rom')).arrayBuffer());
      prg = rom.subarray(16, 16 + rom[4] * 0x4000);
      chr = rom.subarray(16 + rom[4] * 0x4000);
      levels = Array.from({ length: 12 }, (_, n) => new Level(prg, n));
    }
    data = await gunzip('take/randil.bin.gz');
    frames = data[4] | (data[5] << 8) | (data[6] << 16) | (data[7] << 24);
    const nCells = data[8] | (data[9] << 8);
    cells = [];
    let o = 10;
    for (let i = 0; i < nCells; i++, o += 2) cells.push(data[o] | (data[o + 1] << 8));
    // Every frame's offset, and the whole state every 600 frames, for seeking.
    offsets = new Uint32Array(frames);
    keys = [];
    const s = new Uint8Array(nCells);
    for (let f = 0; f < frames; f++) {
      offsets[f] = o;
      const count = data[o] | (data[o + 1] << 8);
      o += 2;
      for (let k = 0; k < count; k++, o += 3) s[data[o] | (data[o + 1] << 8)] = data[o + 2];
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
    const spans = raw.filter(([l]) => l < 12).map(([l, a, b]) => {
      let s = a, e = b;
      while (s < b && posAt[s + 1] === posAt[a]) s++;
      while (e > s && posAt[e] === posAt[e - 1]) e--;
      s = Math.min(s + 1, b);
      while (s < e && dark[s]) s++;
      return [l + 1, s, e];
    });
    sdata = await gunzip('take/randil-sound.bin.gz');
    const n = sdata[4] | (sdata[5] << 8) | (sdata[6] << 16) | (sdata[7] << 24);
    soffs = new Uint32Array(n);
    for (let f = 0, q = 8; f < n; f++) { soffs[f] = q; q += 2 + 2 * (sdata[q] | (sdata[q + 1] << 8)); }
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
  draw(f, ctx) {
    if (!image) { image = ctx.createImageData(256, 176); px = new Uint32Array(image.data.buffer); }
    const level = levels[get(0xa8)];
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
          if (sx < 8) continue; // PPUMASK $18: no sprites in the leftmost 8 pixels (src/experiments/corner-sprite.ts)
          const bit = attr & 0x40 ? col : 7 - col;
          const c = ((lo >> bit) & 1) | (((hi >> bit) & 1) << 1);
          if (!c || (attr & 0x20 && bgIndex[sy * 256 + sx])) continue;
          px[sy * 256 + sx] = rgb(pal(0x10 + (attr & 3) * 4 + c));
        }
      }
    }
    ctx.putImageData(image, 0, 0);
    return { x: camX, y: camY };
  },
  writesOf(f, each) {
    if (!soffs || f >= soffs.length) return;
    let p = soffs[f];
    const count = sdata[p] | (sdata[p + 1] << 8);
    p += 2;
    for (let i = 0; i < count; i++, p += 2) each(0x4000 + (sdata[p] & 0x3f), sdata[p + 1], sdata[p] & 0xc0);
  },
  memory: dmcRead,
  // Prisoners rescued so far (their slot's flags 8): gone from the map's layer too.
  onFrame() {
    const rescued = [];
    for (let i = 0; i < 32; i++) if (get(0x400 + i) === 8) rescued.push(i);
    const key = get(0xa8) + ':' + rescued.join();
    if (key !== lastRescued) { lastRescued = key; window.takeRescued = new Set(rescued); if (page) showPrisoners(); }
  },
};

// ---------------------------------------------------------------------------- the page

// The page, once mounted (the hooks below run first while it is being built).
let page = null;
const label = (inner, title = '') => `<label style="display:flex;gap:6px;align-items:center;cursor:pointer"${title ? ` title="${title}"` : ''}>${inner}</label>`;
page = mountRunPage({
  title: 'Alien 3',
  levelWord: 'level',
  levels: LEVEL_LIST,
  image: (n) => String(n).padStart(2, '0') + '.png',
  field: { w: 256, h: 176 },
  // A level's whole width in the window: no scrolling sideways (the user's wish, 2026-11-02).
  zoom: 'fitw',
  run,
  apu: { Apu, mixApu, OutputFilters },
  soundWorklet: new URL('maps-run/sound.js', import.meta.url).href,
  trail: { url: 'tas-randil.json', shift: 1, label: 'Randil&#39;s TAS path', title: 'TAS by Randil (tasvideos 2713M, 20:24.52), played in FCEUX; no wall clips; every prisoner rescued' },
  runTitle: 'Randil&#39;s TAS as FCEUX played it: the camera window shows the game&#39;s frame (background from the level data, sprites and palette from the take)',
  soundTitle: 'The run&#39;s music and sound effects: the game&#39;s sound-chip writes taken in FCEUX (movie_sound.lua), played through @xromdev/apu. At ×1 only',
  musicTitle: 'The songs: writes from the driver&#39;s slots playing a song&#39;s stream (1-$2F)',
  effectsTitle: 'The sound effects: writes from the driver&#39;s slots playing an effect&#39;s stream ($30 and up) — the shots and the rest',
  headerHtml:
    label('<input type="checkbox" id="runSeenBox"> hidden from the player <input type="color" id="unseenColor" value="#000000" title="colour of the hidden" style="width:26px;height:20px;padding:0;border:none;background:none"><input type="range" id="unseenOp" min="0.1" max="1" step="0.05" value="1" title="opacity" style="width:60px"> <span id="runSeenN" class="legend"></span>', 'Covered: whatever never came on screen, neither in Randil&#39;s run nor in a search of the level in the game (no wall clips; untouchable, health, timer held). Where no search was made yet, the run alone') +
    label('<input type="checkbox" id="railsBox"> camera rails', 'Where the middle of the camera&#39;s field goes: blue — sideways only (page tops), orange — up and down only (odd bands)') +
    // The prisoners' switch wears the game's own prisoner, lit in the pink of their rings.
    iconToggle({ id: 'pris', icon: '<img src="prisoners/01.png" alt="">', label: 'prisoners', colour: '#ff3cac', count: 'prisN', checked: true }) +
    // The whole address space is the workshop's alone (memory address-space-dev-only).
    (PUBLIC ? '' : label('<input type="checkbox" id="space"> whole address space (64 KB, 128 pages)') + '<span class="legend" id="spaceLegend">address space: dimmed — not ROM (what the game read, or a RAM snapshot)</span>'),
  layersBelow: '<svg id="view"></svg><div id="priLayer"></div>',
  afterStage: '<div id="space-stage"></div>',
  css: `#space-stage{position:relative;display:none}#space-stage img{position:absolute;left:0;image-rendering:pixelated}
#view{position:absolute;left:0;top:0;overflow:visible;pointer-events:none}
#view .unseen{fill:var(--unseen,#000);fill-opacity:var(--unseen-op,1)}
#view .h{stroke:#5fd0ff;stroke-width:2;vector-effect:non-scaling-stroke}
#view .v{stroke:#ffb347;stroke-width:2;stroke-dasharray:8 5;vector-effect:non-scaling-stroke}
.psp{position:absolute;image-rendering:pixelated;pointer-events:none}.psp.glow{filter:drop-shadow(0 0 2px #ff3cac) drop-shadow(0 0 4px #ff3cac)}
.pri{position:absolute;width:44px;height:44px;margin:-22px 0 0 -22px;border:3px solid #ff3cac;border-radius:50%;box-shadow:0 0 0 3px #0008,0 0 14px #ff3cac;pointer-events:none;animation:pulse 1.2s ease-in-out infinite}
.pri b{position:absolute;left:50%;top:-22px;transform:translateX(-50%);background:#ff3cac;color:#000;font:bold 12px system-ui;padding:0 5px;border-radius:3px}
@keyframes pulse{50%{transform:scale(1.25);opacity:.6}}
.reg{position:absolute;left:0;right:0;border-top:2px solid #e0b040;pointer-events:none}
.reg span{position:sticky;left:4px;background:#000c;color:#f0c050;padding:1px 6px;font-size:12px;white-space:nowrap}`,
  // `?short`: the vertical promo (maps-run/short.js) — the whole level first, then the game as a
  // player sees it, the level opening round it, the route drawn, the prisoners, the whole level again.
  short: {
    game: 'Alien 3', folder: 'alien-3', level: 8, start: 60, music: 23.5,
    buttons: [{ id: 'trailBox', label: 'route' }, { id: 'pris', label: 'prisoners' }],
    initial: { trailBox: true, pris: true },
    cams: [
      { t: 0, cam: 'fit' },
      { t: 3.2, dur: 1.4, cam: { z: 'frame', clamp: false } },
      { t: 8.6, dur: 1.6, cam: { z: 1 } },
      { t: 12.2, dur: 2.4, cam: { z: 0.5 } },
      { t: 15.3, dur: 1.6, cam: { z: 0.34 } },
      { t: 19.4, dur: 2.6, cam: 'fit' },
    ],
    mask: [{ t: 3.4, dur: 1.0, to: 1 }, { t: 8.6, dur: 1.4, to: 0 }],
    events: [
      { t: 3.2, set: { trailBox: false, pris: false } },
      { t: 12, click: 'trailBox' },
      { t: 12, reveal: 3.2 },
      { t: 15.8, click: 'pris' },
    ],
    captions: [
      { from: 0, to: 3.2, text: 'The whole level', sub: 'Alien 3 (NES) · the speedrun&#39;s route · every prisoner', big: true },
      { from: 4.8, to: 8.5, text: 'Looks like an ordinary game…' },
      { from: 8.9, to: 11.7, text: '…but the whole level is right here' },
      { from: 12, to: 15.6, text: 'The speedrun&#39;s route', sub: 'Randil&#39;s TAS, frame by frame' },
      { from: 15.8, to: 19.2, text: 'Every prisoner to rescue' },
      { from: 19.6, to: 23.3, text: 'Every level of Alien 3', sub: 'mapped straight from the cartridge' },
    ],
    end: { path: '/games/alien-3/maps', line: 'Every level, the speedrun,<br>every prisoner — play it there' },
    // The cover: the route and the prisoners in the level's right half, close enough to read.
    cover: { t: 18.8, z: 0.6, cx: 1600, cy: 560, eye: 660, text: 'The whole level', sub: 'you never get to see · Alien 3 (NES)' },
  },
  onPick: () => layers(),
  onZoom: () => layers(),
  onMouse: (x, y) => {
    const page_ = Math.floor(y / 240), ty = Math.floor(y / 8), inPage = Math.floor((ty % 30) / 4);
    $('pos').textContent = `x ${x} y ${y} · tile ${x >> 3},${ty} · block ${x >> 5}, layout row ${page_ * 8 + inPage} (page ${page_})`;
  },
});
const L = $('iLevel');
function layers() { if (!page) return; showSpace(); showPrisoners(); showView(); }

// Prisoners (object type 6, STATUS §14), numbered in the order Randil's run rescues them: the game's own sprite, at its offset from the object's
// X/Y (taken from the game at rest, src/prisoner-sprites.ts), and a ring on it, numbered.
// While the run plays, the prisoners it has rescued are left out (window.takeRescued, by object slot).
function showPrisoners() {
  const cur = page.cur, z = page.z, done = window.takeRescued;
  const list = (PRISONERS[cur] || []).filter((o) => !(done && done.has(o.i))), sp = SPRITES[cur], nn = String(cur).padStart(2, '0');
  $('prisN').textContent = '(' + list.length + ')';
  // The prisoners themselves always; the box marks them (glow, ring, the rescue number).
  const mark = $('pris').checked;
  $('priLayer').innerHTML = list.map((o) => {
    const cx = sp ? o.x + sp.dx + sp.w / 2 : o.x, cy = sp ? o.y + sp.dy + sp.h / 2 : o.y;
    return (sp ? `<img class="psp${mark ? ' glow' : ''}" src="prisoners/${nn}.png" style="left:${(o.x + sp.dx) * z}px;top:${(o.y + sp.dy) * z}px;width:${sp.w * z}px;height:${sp.h * z}px">` : '') +
      (mark ? `<div class="pri" style="left:${cx * z}px;top:${cy * z}px;width:${Math.max(44, 48 * z)}px;height:${Math.max(44, 48 * z)}px;margin:${-Math.max(22, 24 * z)}px 0 0 ${-Math.max(22, 24 * z)}px" title="object ${o.i}: X ${o.x}, Y ${o.y}"><b>${o.num}</b></div>` : '');
  }).join('');
}
$('pris').onchange = showPrisoners;

// The camera's rule (STATUS §22): across only on a page top (Y = 240·k), up and down only on an odd
// 256-px band (X = 256·(2j+1)); the field 256 × 176. Rails: where the field's middle goes.
let RUNSEEN = null, VISIBLE = null;
const rowsToSet = (rows, W, H) => { const a = new Uint8Array(W * H); rows.forEach((row, ty) => { let x = 0, s = false; for (const k of row.split(',').map(Number)) { if (s) a.fill(1, ty * W + x, ty * W + x + k); x += k; s = !s; } }); return a; };
const setToPath = (a, W, H, want) => { let d = ''; for (let ty = 0; ty < H; ty++) { let tx = 0; while (tx < W) { if (a[ty * W + tx] === want) { let k = tx; while (k < W && a[ty * W + k] === want) k++; d += `M${tx * 8} ${ty * 8}h${(k - tx) * 8}v8h${-(k - tx) * 8}z`; tx = k; } else tx++; } } return d; };
async function showView() {
  const v = $('view'), W = L.naturalWidth || 2048, H = L.naturalHeight || 1920, cur = page.cur, z = page.z;
  const rs = $('runSeenBox').checked;
  if (rs && !RUNSEEN) {
    try { RUNSEEN = await (await fetch('run-seen.json', { cache: 'no-store' })).json(); } catch { RUNSEEN = {}; }
    try { VISIBLE = await (await fetch('visible.json', { cache: 'no-store' })).json(); } catch { VISIBLE = {}; }
  }
  v.setAttribute('viewBox', `0 0 ${W} ${H}`); v.style.width = W * z + 'px'; v.style.height = H * z + 'px';
  let h = '';
  // Not seen by the player: neither in Randil's run (run-seen.json) nor in the search (visible.json).
  const R = rs && RUNSEEN ? RUNSEEN[cur] : null, V = rs && VISIBLE ? VISIBLE[cur] : null;
  if (R) {
    const TW = R.w, TH = R.h, runSet = rowsToSet(R.rows, TW, TH), only = V ? rowsToSet(V.search, TW, TH) : new Uint8Array(TW * TH), seen = new Uint8Array(TW * TH);
    let n = 0;
    for (let i = 0; i < seen.length; i++) { seen[i] = runSet[i] | only[i]; n += seen[i]; }
    $('runSeenN').textContent = `(${((100 * n) / seen.length).toFixed(0)} % visible${V ? '' : ', the run only'})`;
    h += `<path class="unseen" d="${setToPath(seen, TW, TH, 0)}"/>`;
  } else $('runSeenN').textContent = '';
  if ($('railsBox').checked) {
    for (let y = 0; y + 176 <= H; y += 240) h += `<line class="h" x1="128" y1="${y + 88}" x2="${W - 128}" y2="${y + 88}"/>`;
    for (let x = 256; x + 256 <= W; x += 512) h += `<line class="v" x1="${x + 128}" y1="88" x2="${x + 128}" y2="${H - 88}"/>`;
  }
  v.innerHTML = h;
}
$('runSeenBox').onchange = showView;
// The unseen's colour and opacity (kept in this browser).
const uc = $('unseenColor'), uo = $('unseenOp');
try { uc.value = localStorage.getItem('a3-unseen-color') || uc.value; uo.value = localStorage.getItem('a3-unseen-op') || uo.value; } catch {}
function unseenStyle() {
  const v = $('view');
  v.style.setProperty('--unseen', uc.value); v.style.setProperty('--unseen-op', uo.value);
  try { localStorage.setItem('a3-unseen-color', uc.value); localStorage.setItem('a3-unseen-op', uo.value); } catch {}
}
uc.oninput = unseenStyle; uo.oninput = unseenStyle; unseenStyle(); $('railsBox').onchange = showView;

// The whole address space (the workshop's only): 128 pages of 512 bytes as the level's layout reads them.
const ss = $('space-stage'), spaceBox = $('space') ?? { checked: false };
function showSpace() {
  const cur = page.cur, z = page.z, st = $('stage');
  const on = spaceBox.checked && SPACES[cur];
  st.style.display = on ? 'none' : ''; ss.style.display = on ? 'block' : 'none';
  if (!on) return;
  const P = SPACES[cur], nn = String(cur).padStart(2, '0');
  let h = '';
  for (let k = 0; k < P.chunks; k++) h += `<img src="${nn}-space-${k}.png" style="top:${k * P.chunkHeight * z}px;width:${2048 * z}px">`;
  for (const g of P.regions) h += `<div class="reg" style="top:${g.y * z}px"><span>Y ${g.y}: $${g.from.toString(16).toUpperCase().padStart(4, '0')}… ${g.name}</span></div>`;
  ss.innerHTML = h; ss.style.width = 2048 * z + 'px'; ss.style.height = P.chunks * P.chunkHeight * z + 'px';
}
spaceBox.onchange = showSpace;
ss.onmousemove = (e) => {
  const P = SPACES[page.cur];
  if (!P) return;
  const r = ss.getBoundingClientRect(), z = page.z, x = Math.floor((e.clientX - r.left) / z), y = Math.floor((e.clientY - r.top) / z);
  const pg = Math.floor(y / 240), inPage = Math.min(7, Math.floor((y % 240) / 32)), row = pg * 8 + inPage, col = x >> 5, a = (P.layout + row * 64 + col) & 0xffff;
  $('pos').textContent = `x ${x} y ${y} · page ${pg} · address $${a.toString(16).toUpperCase().padStart(4, '0')}`;
};
layers();
