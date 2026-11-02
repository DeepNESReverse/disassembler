// Circus Charlie's run for the shared maps page (src/maps-run → ~/xrom-libs/maps-run): TASVideos
// 5270M over the stage maps. The run is packed by src/take-pack.ts from our exact replay: per frame
// the field's camera, the sprite memory, the palette and both nametable pages, and the sound chip's
// writes with their owner. The field is drawn as the PPU draws it (from line 44: plane x = camera
// mod 512, y = the line, STATUS §3) and laid on the map at the camera.
// The public build (src/public.ts, window.CART_PACK set) reads no ROM: cart.bin.gz holds the pattern
// tables with only the tiles the maps and the run draw; the files sit beside the bundled player.
import { NES_RGB } from '/xrom-libs/nes/src/palette.ts';
import { Apu, mixApu, OutputFilters } from '/xrom-libs/nes/node_modules/@xromdev/apu/dist/index.js';
import { mountRunPage } from '/src/maps-run/run-page.js';

const FIELD_TOP = 44, H = 240 - FIELD_TOP;
const OAM = 16, PAL = 272, CIRAM = 304;
const NAMES = ['lion and fire rings', 'tightrope', 'balls', 'horse', 'trapeze'];
let image, px;
const bgOpaque = new Uint8Array(256 * H);
let chr, data, frames, size, offsets, keys, state;
const PUBLIC = !!window.CART_PACK;
/** The maps, the run and the path: out/stages in the workshop, beside the page when public. */
const STAGES = PUBLIC ? '' : '/stages/';

async function gunzip(url) {
  const res = await fetch(url);
  return new Uint8Array(await new Response(res.body.pipeThrough(new DecompressionStream('gzip'))).arrayBuffer());
}

const rgb = (i) => { const c = NES_RGB[i & 0x3f]; return 0xff000000 | ((c & 0xff) << 16) | (c & 0xff00) | ((c >> 16) & 0xff); };
const pal = (i) => state[PAL + ((i & 0x13) === 0x10 ? i & 0x0f : i)];

const run = {
  async load() {
    chr = PUBLIC ? await gunzip(window.CART_PACK) : new Uint8Array(await (await fetch('/chr')).arrayBuffer());
    data = await gunzip(STAGES + 'take.bin.gz');
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
      o += 2 + 2 * (data[o] | (data[o + 1] << 8));
      if (f % 600 === 0) keys.push(s.slice());
      // A stage is shown while its field is drawn at the camera: played (5) or its bonus counted (8).
      if ((s[1] === 5 || s[1] === 8) && s[4]) {
        const span = firstLast.get(s[0]) ?? [s[0] + 1, f, f];
        span[2] = f;
        firstLast.set(s[0], span);
      }
    }
    return { frames, spans: [...firstLast.values()].sort((a, b) => a[0] - b[0]) };
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
    if (!image) { image = ctx.createImageData(256, H); px = new Uint32Array(image.data.buffer); }
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
    return { x: camX, y: 0 };
  },
  writesOf(f, each) {
    let p = offsets[f];
    p += 2 + 3 * (data[p] | (data[p + 1] << 8));
    const count = data[p] | (data[p + 1] << 8);
    p += 2;
    for (let i = 0; i < count; i++, p += 2) each(0x4000 + (data[p] & 0x3f), data[p + 1], data[p] & 0xc0);
  },
};

const page = mountRunPage({
  title: 'Circus Charlie',
  levelWord: 'stage',
  levels: NAMES.map((name, i) => ({ n: i + 1, label: `Stage ${i + 1} — ${name}` })),
  image: (n) => `${STAGES}stage${n}${document.getElementById('marksBox')?.checked ? '-marks' : ''}.png`,
  field: { w: 256, h: H },
  run,
  apu: { Apu, mixApu, OutputFilters },
  soundWorklet: PUBLIC ? new URL('maps-run/sound.js', import.meta.url).href : '/src/maps-run/sound.js',
  trail: { url: STAGES + 'tas.json', label: 'TAS path', title: 'TAS: tasvideos.org/5270M, played from power-on in FCEUX and replayed here frame for frame; Charlie&#39;s way through each stage' },
  runTitle: 'TASVideos 5270M as the game plays it: the camera window shows the game&#39;s frame (the field as the PPU draws it, from our replay of the movie)',
  soundTitle: 'The run&#39;s music and sound effects: the game&#39;s sound-chip writes (the same as FCEUX&#39;s), played through @xromdev/apu. At ×1 only',
  musicTitle: 'The songs: writes from the driver&#39;s slots playing a stage theme or the start/goal jingle (numbers 14-21)',
  effectsTitle: 'The sound effects: writes from the driver&#39;s slots playing an effect (1-7) — the jumps, the bonus count and the rest',
  headerHtml: '<label style="display:flex;gap:6px;align-items:center;cursor:pointer" title="Tinted: the cells the game writes during play (boards, fire pots, balls, obstacles) red; those shown more than one way blue"><input type="checkbox" id="marksBox"> drawn by play</label>',
  onMouse: (x, y) => { document.getElementById('pos').textContent = `x ${x} y ${y} · tile ${x >> 3},${(y + FIELD_TOP) >> 3}`; },
});
document.getElementById('marksBox').onchange = () => page.pick(page.cur);
