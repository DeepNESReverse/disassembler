// Cliffhanger's run for the shared maps page (src/maps-run → libs/maps-run): klmz's TAS over the
// section maps. The run is packed by src/take-pack.ts from this NES's replay of the movie (in step
// with FCEUX, STATUS §1): per frame the camera on the section's map, the PPU's control and mask,
// the scroll of the field's first line, the MMC3's CHR banks, the sprite memory, the palette and
// the four nametables, and the sound chip's writes with their owner. The field (the 256 × 176
// above the status bar) is drawn as the PPU draws it and laid on the map at the camera.
//
// Two ways to look, by the user's word (the joins are not perfect): the whole mountain — one world
// (src/world.ts → world.json), every section where the run goes on from the one before but section
// 14, apart; the house (section 5) laid over its outside in section 4, and while the run is in it the
// view zooms in, the world dims and the inside fades in over the house — and every section alone.
// The page's level 1 is the world, level s + 2 section s. The run follows the way chosen: choosing
// a level of one way puts its spans first, so the page's span lookup finds them.
import { NES_RGB } from '/libs/nes/src/palette.ts';
import { Apu, mixApu, OutputFilters } from '/libs/nes/node_modules/@xromdev/apu/dist/index.js';
import { mountRunPage, iconToggle } from '/src/maps-run/run-page.js';

const W = 256, H = 176;
const OAM = 32, PAL = 288, NT = 320;
const SECTIONS = 15;
let image, px;
const bgOpaque = new Uint8Array(W * H);
let chr, data, frames, size, offsets, keys, state;
const PUBLIC = !!window.CART_PACK;
/** The maps, the run and the path: out/levels in the workshop, beside the page when public. */
const LEVELS = PUBLIC ? '' : '/levels/';
const WORLD = await (await fetch(LEVELS + 'world.json')).json();
const HOUSE = WORLD.house.inside.section;
const APART = WORLD.apart[0];
const WHOLE = 1;
const levelOfSection = (s) => s + 2;
/** Where a section's map lies on the world (section 14 is apart: its own level in both ways). */
const originOf = (s) => (s === HOUSE ? WORLD.house.inside : s === APART ? { x: 0, y: 0 } : WORLD.pieces.find((p) => p.section === s));
/**
 * The run's spans, both ways, each marked with its way (`way`: 'whole' or 'sections'); reordered in
 * place when the way changes (the page keeps the array and takes the first span that holds a frame,
 * and on past a span's end goes to the span after it in the array).
 *
 * By the user's word: on the whole mountain the run is seamless — the story screens between sections
 * and the fades at their ends are cut (`cut`: the run jumps over them, its clock leaves them out);
 * section by section they are played, music and all: the screens before a section are its own, the
 * first from power-on, the last on to the end.
 */
let spans = [];
let whole = true;
function orderSpans() {
  const mine = (sp) => sp.way === (whole ? 'whole' : 'sections');
  spans.sort((a, b) => Number(mine(b)) - Number(mine(a)) || a[1] - b[1]);
}
/** Per frame on the whole mountain: 1 cut. `nextKept[f]`: the first frame kept from f on. */
let cut, nextKept, keptBefore, keptTotal = 0;
/** The first frame kept of each section (the slider's marks). */
const sectionStart = new Map();
const nn = (s) => String(s).padStart(2, '0');
const mapOf = (s) => `${LEVELS}${nn(s)}.png`;

async function gunzip(url) {
  const res = await fetch(url);
  return new Uint8Array(await new Response(res.body.pipeThrough(new DecompressionStream('gzip'))).arrayBuffer());
}

const rgb = (i) => { const c = NES_RGB[i & 0x3f]; return 0xff000000 | ((c & 0xff) << 16) | (c & 0xff00) | ((c >> 16) & 0xff); };
const pal = (i) => state[PAL + ((i & 0x13) === 0x10 ? i & 0x0f : i)];
const i16 = (lo, hi) => ((hi << 8) | lo) << 16 >> 16;
/** A CHR byte at PPU address `a` through the frame's MMC3 banks. */
const chrAt = (a) => chr[state[16 + (a >> 10)] * 0x400 + (a & 0x3ff)];

const run = {
  async load() {
    chr = PUBLIC ? await gunzip(window.CART_PACK) : new Uint8Array(await (await fetch('/chr')).arrayBuffer());
    data = await gunzip(LEVELS + 'take.bin.gz');
    frames = data[4] | (data[5] << 8) | (data[6] << 16) | (data[7] * 0x1000000);
    frames += 1;
    size = data[8] | (data[9] << 8);
    state = new Uint8Array(size);
    // Every frame's offset, and the whole state every 600 frames, for seeking.
    offsets = new Uint32Array(frames);
    keys = [];
    const s = new Uint8Array(size);
    // Per frame: the section, whether its field is shown, and its background palette (a hash).
    const sec = new Uint8Array(frames), shown = new Uint8Array(frames), palOf = new Int32Array(frames);
    let o = 10;
    for (let f = 0; f < frames; f++) {
      offsets[f] = o;
      const count = data[o] | (data[o + 1] << 8);
      o += 2;
      for (let k = 0; k < count; k++, o += 3) s[data[o] | (data[o + 1] << 8)] = data[o + 2];
      o += 2 + 2 * (data[o] | (data[o + 1] << 8));
      if (f % 600 === 0) keys.push(s.slice());
      sec[f] = s[0];
      shown[f] = s[1];
      let h = 0;
      for (let i = 0; i < 16; i++) h = (Math.imul(h, 31) + s[PAL + i]) | 0;
      palOf[f] = h;
    }
    // Each section's stretch of play: its shown frames, less the fades at its ends (the frames whose
    // palette is not the one it shows most).
    const stretches = [];
    for (let f = 0; f < frames; f++) {
      if (!shown[f]) continue;
      const last = stretches[stretches.length - 1];
      if (last && last.s === sec[f] && f - last.b <= 30) last.b = f;
      else stretches.push({ s: sec[f], a: f, b: f });
    }
    for (const st of stretches) {
      const count = new Map();
      for (let f = st.a; f <= st.b; f++) if (shown[f]) count.set(palOf[f], (count.get(palOf[f]) ?? 0) + 1);
      const main = [...count].sort((x, y) => y[1] - x[1])[0][0];
      while (st.a < st.b && palOf[st.a] !== main) st.a++;
      while (st.b > st.a && palOf[st.b] !== main) st.b--;
      if (!sectionStart.has(st.s)) sectionStart.set(st.s, st.a);
    }
    // The whole mountain: one span over its sections' stretches, the frames between them cut.
    const inWorld = stretches.filter((st) => st.s !== APART);
    const apart = stretches.filter((st) => st.s === APART);
    cut = new Uint8Array(frames).fill(1);
    for (const st of stretches) cut.fill(0, st.a, st.b + 1);
    nextKept = new Int32Array(frames);
    for (let f = frames - 1, next = frames - 1; f >= 0; f--) nextKept[f] = cut[f] ? next : (next = f);
    keptBefore = new Int32Array(frames);
    for (let f = 1; f < frames; f++) keptBefore[f] = keptBefore[f - 1] + (cut[f - 1] ? 0 : 1);
    const w0 = inWorld[0].a, w1 = inWorld[inWorld.length - 1].b;
    keptTotal = keptBefore[w1] - keptBefore[w0] + 1;
    const mk = (n, a, b, way) => Object.assign([n, a, b], { way });
    // Section 14's runs on to the last frame: past a span's end the page goes to the next span in
    // the array, which here would be section 0's (the cut after it ends the run instead).
    spans = [mk(WHOLE, w0, w1, 'whole'), mk(levelOfSection(APART), apart[0].a, frames - 1, 'whole')];
    // Section by section: from the end of the section before (the screens before it are its own;
    // the first from power-on), the last on to the run's end.
    const bySection = new Map();
    for (const st of stretches) {
      const g = bySection.get(st.s) ?? { a: st.a, b: st.b };
      g.b = st.b;
      bySection.set(st.s, g);
    }
    const order = [...bySection].sort((x, y) => x[1].a - y[1].a);
    order.forEach(([sct, g], i) => {
      const from = i === 0 ? 1 : order[i - 1][1].b + 1;
      const to = i === order.length - 1 ? frames - 1 : g.b;
      spans.push(mk(levelOfSection(sct), from, to, 'sections'));
    });
    orderSpans();
    setTimeout(sectionTicks, 100);
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
    // On the whole mountain a cut frame is not drawn: the run jumps over it (onFrame).
    if (page?.cur === WHOLE && cut?.[f]) return run.last;
    const ctrl = state[6], mask = state[7];
    const planeX = state[8] | (state[9] << 8), planeY = state[10] | (state[11] << 8);
    const backdrop = rgb(pal(0));
    // Between the field's frames (a fade, a story screen) the window keeps its place, dark.
    if (!state[1]) {
      px.fill(0xff000000);
      ctx.putImageData(image, 0, 0);
      return run.last;
    }
    // The background through the scroll of line 0 (one scroll over the whole field: STATUS §4).
    const bgTable = (ctrl & 0x10) << 8;
    for (let line = 0; line < H; line++) {
      const py = (planeY + line) % 480, row = (py % 240) >> 3, fy = py & 7, top = py >= 240 ? 2 : 0;
      for (let x = 0; x < W; x++) {
        const i = line * W + x;
        // The left 8 columns the game hides (PPUMASK bit 1 clear) are left clear, the map showing
        // through, not drawn as the backdrop's stripe.
        if (x < 8 && !(mask & 0x02)) { px[i] = 0; bgOpaque[i] = 0; continue; }
        if (!(mask & 0x08)) { px[i] = backdrop; bgOpaque[i] = 0; continue; }
        const pxl = (planeX + x) & 511, cx = (pxl & 255) >> 3, base = NT + (top | (pxl >> 8)) * 0x400;
        const tile = state[base + row * 32 + cx];
        const attr = state[base + 0x3c0 + (row >> 2) * 8 + (cx >> 2)];
        const p = (attr >> (((row & 2) << 1) | (cx & 2))) & 3;
        const a = bgTable + tile * 16 + fy, b = 7 - (pxl & 7);
        const c = ((chrAt(a) >> b) & 1) | (((chrAt(a + 8) >> b) & 1) << 1);
        bgOpaque[i] = c ? 1 : 0;
        px[i] = c ? rgb(pal(p * 4 + c)) : backdrop;
      }
    }
    // Sprites from the sprite memory: the first eight on a line, earlier ones over later ones.
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
          const lo = chrAt(base + r), hi = chrAt(base + r + 8);
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
    const o = page?.cur === WHOLE ? originOf(state[0]) : { x: 0, y: 0 };
    // In the house on the whole mountain the frame is scaled into the house's walls (onFrame).
    const k = o.scale ?? 1;
    run.last = { x: o.x + k * i16(state[2], state[3]), y: o.y + k * i16(state[4], state[5]) };
    return run.last;
  },
  // The house: in, the inside fades in over its walls at their size, the run's frame scaled with
  // it, and the view zooms so that the house fills the window (the follow paused, the house in the
  // middle); out, the zoom and the follow come back.
  inHouse: false,
  zoomBefore: 0,
  followBefore: true,
  onFrame(f) {
    if (page?.cur === WHOLE && cut) {
      // Over the cut (after the page's frame), and the clock without the cut frames.
      if (cut[f] && nextKept[f] > f) queueMicrotask(() => seekTo(nextKept[f]));
      const span = spans.find((sp) => sp[0] === WHOLE);
      queueMicrotask(() => {
        const t = document.getElementById('tkTime');
        if (t) t.textContent = `${clockOf(keptBefore[Math.max(span[1], f)] - keptBefore[span[1]])} / ${clockOf(keptTotal)}`;
      });
    }
    const inside = state[0] === HOUSE && page?.cur === WHOLE;
    const live = document.getElementById('live');
    // The page sets the frame's transform each frame: the scale goes after it.
    if (inside) live.style.transform += ` scale(${WORLD.house.inside.scale})`;
    if (inside === run.inHouse) return;
    run.inHouse = inside;
    document.getElementById('house').classList.toggle('on', inside);
    // After the page's frame: onFrame runs inside it, before it scrolls by the zoom and follow it
    // read at its start, which would undo these.
    if (page) setTimeout(() => run.houseView(inside));
  },
  houseView(inside) {
    const follow = document.getElementById('tkFollow');
    const zNum = document.getElementById('zNum');
    const wrap = document.getElementById('wrap');
    const setPct = (v) => { zNum.value = String(v); zNum.dispatchEvent(new Event('change')); };
    if (inside) {
      const on = document.querySelector('[data-z].on');
      run.zoomBefore = on ? on.dataset.z : Math.round(page.z * 100);
      run.followBefore = follow.checked;
      follow.checked = false;
      const h = WORLD.house.outside;
      // As near as the page zooms (4× at most) to the house filling the window.
      setPct(Math.floor(Math.min(wrap.clientWidth / h.w, wrap.clientHeight / h.h) * 0.92 * 100));
      wrap.scrollTo((h.x + h.w / 2) * page.z - wrap.clientWidth / 2, (h.y + h.h / 2) * page.z - wrap.clientHeight / 2);
    } else {
      follow.checked = run.followBefore;
      const was = run.zoomBefore;
      run.zoomBefore = 0;
      if (typeof was === 'string') document.querySelector(`[data-z="${was}"]`).click();
      else if (was) setPct(was);
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

// Set by mountRunPage's return; its hooks may run before (the first level is picked in it).
let page = null;
page = mountRunPage({
  title: 'Cliffhanger',
  levelWord: 'map',
  levels: [
    { n: WHOLE, label: 'The whole mountain (1-14)' },
    ...Array.from({ length: SECTIONS }, (_, s) => ({ n: levelOfSection(s), label: `Section ${s + 1}${s === HOUSE ? ' — the house' : s === APART ? ' — the last fight' : ''}` })),
  ],
  image: (n) =>
    n === WHOLE
      ? { w: WORLD.w, h: WORLD.h, pieces: WORLD.pieces.map((p) => ({ src: mapOf(p.section), x: p.x, y: p.y, w: p.w, h: p.h })) }
      : mapOf(n - 2),
  field: { w: W, h: H },
  zoom: 'fith',
  run,
  apu: { Apu, mixApu, OutputFilters },
  soundWorklet: PUBLIC ? new URL('maps-run/sound.js', import.meta.url).href : '/src/maps-run/sound.js',
  runName: 'klmz’s TAS',
  trail: { url: LEVELS + 'tas-world.json', label: 'route', title: 'TAS by klmz, played from power-on in FCEUX and replayed here frame for frame: the player&#39;s way through the mountain' },
  runTitle: 'klmz&#39;s TAS as the game plays it: the camera window shows the game&#39;s frame (the field as the PPU draws it, from our replay of the movie)',
  soundTitle: 'The run&#39;s music and sound effects: the game&#39;s sound-chip writes (the same as FCEUX&#39;s), played through @xromdev/apu. At ×1 only',
  musicTitle: 'The music: the driver&#39;s channel writes (PRG $C000-$C3FF)',
  effectsTitle: 'The sound effects: the effect player&#39;s writes (PRG $D100-$D3FF), which take a channel from the music while they sound',
  // The workshop's seam editor (not on the site): a switch, its help and the saving.
  headerHtml: PUBLIC
    ? ''
    : iconToggle({ id: 'seamBox', label: 'seams', colour: '#4cc9f0', title: 'Set the seams by eye: click a section of the whole mountain, move it with the arrows (1 px; with Shift 8 px) — the sections after it move along — then Save', icon: '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4 4h7v16H4zM13 4h7v16h-7z"/><path d="M9 12h6M13 10l2 2-2 2"/></svg>' }) +
      '<span id="seamUi" hidden><span id="seamInfo" class="legend"></span> <button id="seamSave">Save</button></span>',
  layersBelow: `<div id="house"><div class="dim"></div><img id="houseIn" alt=""></div>`,
  css: `#live{transform-origin:0 0}#secTicks{position:absolute;pointer-events:none}#secTicks i{position:absolute;top:0;width:2px;margin-left:-1px;background:#e6e9ef;opacity:.55;border-radius:1px}#secTicks b{position:absolute;transform:translateX(-50%);font:600 10px/1 system-ui,sans-serif;color:#cfc8dc;pointer-events:auto;cursor:pointer;padding:1px 2px;border-radius:3px}#secTicks b:hover{background:#b48cff;color:#160b26}#pieces img.sel{outline:2px solid #4cc9f0;opacity:.7;z-index:1}#house{position:absolute;left:0;top:0;width:100%;height:100%;pointer-events:none;opacity:0;transition:opacity .8s}#house.on{opacity:1}#house .dim{position:absolute;inset:0;background:#000b}#houseIn{outline:2px solid #fff6;box-shadow:0 0 40px #000}`,
  // The level chosen sets the way the run follows: the whole mountain, or section by section
  // (section 15 belongs to both).
  onPick: (n) => {
    if (n !== levelOfSection(APART) && whole !== (n === WHOLE)) {
      whole = n === WHOLE;
      orderSpans();
    }
    document.getElementById('house').style.display = n === WHOLE ? '' : 'none';
    placeHouse();
    setTimeout(sectionTicks);
  },
  onZoom: () => placeHouse(),
  onMouse: (x, y) => {
    const p = WORLD.pieces.find((q) => x >= q.x && x < q.x + q.w && y >= q.y && y < q.y + q.h);
    const where = page.cur !== WHOLE ? `section ${page.cur - 1} · x ${x} y ${y}` : p ? `section ${p.section + 1} · x ${x - p.x} y ${y - p.y}` : `world x ${x} y ${y}`;
    document.getElementById('pos').textContent = where;
  },
});

function placeHouse() {
  if (!page) return;
  const im = document.getElementById('houseIn');
  const r = WORLD.house.inside;
  im.src = mapOf(HOUSE);
  Object.assign(im.style, { left: r.x * page.z + 'px', top: r.y * page.z + 'px', width: r.w * r.scale * page.z + 'px' });
}
placeHouse();

// ---------------------------------------------------------------- the seams, set by eye (workshop)
// The whole mountain's pieces are its sections in their order; a join puts section b at (dx, dy)
// from section a's top-left. Moving a piece moves its join and every piece after it. Save keeps the
// joins moved here (and those set before) in data/joins-user.json; the server lays the world anew.
if (!PUBLIC) {
  const box = document.getElementById('seamBox');
  const ui = document.getElementById('seamUi');
  const info = document.getElementById('seamInfo');
  const order = WORLD.pieces.map((p) => p.section);
  const joinOf = (b) => WORLD.joins.find((j) => j.b === b);
  const mine = new Set(WORLD.joins.filter((j) => j.how === "the user's").map((j) => `${j.a}-${j.b}`));
  let sel = -1; // index into order
  const imgs = () => [...document.querySelectorAll('#pieces img')];
  const show = () => {
    imgs().forEach((im, i) => im.classList.toggle('sel', box.checked && i === sel));
    if (sel < 1) { info.textContent = box.checked ? 'click a section' : ''; return; }
    const j = joinOf(order[sel]);
    info.textContent = `section ${j.b + 1} from section ${j.a + 1}: ${j.dx}, ${j.dy} (${j.how})`;
  };
  box.onchange = () => { ui.hidden = !box.checked; if (box.checked && page.cur !== WHOLE) page.pick(WHOLE); show(); };
  document.getElementById('stage').addEventListener('click', (e) => {
    if (!box.checked || page.cur !== WHOLE) return;
    const r = document.getElementById('stage').getBoundingClientRect();
    const x = (e.clientX - r.left) / page.z, y = (e.clientY - r.top) / page.z;
    // The topmost piece under the click: the later one where two overlap.
    for (let i = order.length - 1; i >= 0; i--) {
      const im = imgs()[i];
      const px = +im.dataset.x, py = +im.dataset.y, p = WORLD.pieces[i];
      if (x >= px && x < px + p.w && y >= py && y < py + p.h) { sel = i; break; }
    }
    show();
  });
  addEventListener('keydown', (e) => {
    if (!box.checked || sel < 1 || !e.key.startsWith('Arrow')) return;
    e.preventDefault();
    const step = e.shiftKey ? 8 : 1;
    const ddx = e.key === 'ArrowLeft' ? -step : e.key === 'ArrowRight' ? step : 0;
    const ddy = e.key === 'ArrowUp' ? -step : e.key === 'ArrowDown' ? step : 0;
    const j = joinOf(order[sel]);
    j.dx += ddx;
    j.dy += ddy;
    j.how = 'moved here';
    mine.add(`${j.a}-${j.b}`);
    imgs().forEach((im, i) => { if (i >= sel) { im.dataset.x = +im.dataset.x + ddx; im.dataset.y = +im.dataset.y + ddy; } });
    page.zoomed();
    show();
  });
  document.getElementById('seamSave').onclick = async () => {
    const out = {};
    for (const j of WORLD.joins) if (mine.has(`${j.a}-${j.b}`)) out[`${j.a}-${j.b}`] = { dx: j.dx, dy: j.dy };
    info.textContent = 'saving…';
    const r = await fetch('/joins', { method: 'POST', body: JSON.stringify(out) });
    if (!r.ok) { info.textContent = `not saved: ${await r.text()}`; return; }
    location.reload();
  };
}

/** m:ss of a count of frames, as the page's clock. */
const clockOf = (n) => { const t = Math.max(0, Math.round(n / 60.0988)); return `${Math.floor(t / 60)}:${String(t % 60).padStart(2, '0')}`; };
/** The run to frame f, the way the slider takes it. */
function seekTo(f) {
  const seek = document.getElementById('tkSeek');
  seek.value = String(f);
  seek.dispatchEvent(new Event('input'));
}

// ---------------------------------------------------------------- the sections on the run's slider
// On the whole mountain the slider runs over the whole run: a mark where each section starts, its
// number under it (as the user counts them, from 1); a click on the number takes the run there.
function sectionTicks() {
  const seek = document.getElementById('tkSeek');
  if (!seek) return;
  let lay = document.getElementById('secTicks');
  if (!lay) {
    lay = document.createElement('div');
    lay.id = 'secTicks';
    seek.parentElement.style.position = 'relative';
    seek.parentElement.append(lay);
    new ResizeObserver(() => sectionTicks()).observe(seek);
  }
  const whole = spans.find((sp) => sp[0] === WHOLE);
  if (!page || page.cur !== WHOLE || !whole || seek.offsetParent === null) { lay.hidden = true; return; }
  lay.hidden = false;
  const [, min, max] = whole;
  // Where a value sits on the track: the thumb's centre runs from half a thumb in at each end.
  const THUMB = 16;
  Object.assign(lay.style, { left: seek.offsetLeft + 'px', top: seek.offsetTop + 'px', width: seek.offsetWidth + 'px', height: seek.offsetHeight + 'px' });
  const at = (v) => THUMB / 2 + ((v - min) / (max - min)) * (seek.offsetWidth - THUMB);
  lay.textContent = '';
  for (const [s, start] of sectionStart) {
    if (s === APART || start < min || start > max) continue;
    const sp = [0, start];
    const x = at(start);
    const line = document.createElement('i');
    Object.assign(line.style, { left: x + 'px', height: seek.offsetHeight + 'px' });
    const label = document.createElement('b');
    label.textContent = String(s + 1);
    label.title = `Section ${s + 1}${s === HOUSE ? ' — the house' : ''}`;
    Object.assign(label.style, { left: x + 'px', top: seek.offsetHeight + 1 + 'px' });
    label.onclick = () => seekTo(sp[1]);
    lay.append(line, label);
  }
}
