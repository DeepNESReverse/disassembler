// The maps' player: Randil's TAS as FCEUX played it, drawn over the level maps (out/levels/index.html).
// Per frame the take gives the level, the camera, the sprite page, the palette and the sprite banks
// (src/take-pack.ts); the background inside the camera is drawn from the level's data (src/level.ts,
// read from the ROM here) with that frame's palette, the sprites from the sprite page with their
// banks. Nothing outside the camera moves: the game draws nothing there.
import { Level } from '/src/level.ts';
import { NES_RGB } from '/xrom-libs/nes/src/palette.ts';

const $ = (id) => document.getElementById(id);
const ui = { play: $('tkPlay'), speed: $('tkSpeed'), seek: $('tkSeek'), level: $('tkLevel'), label: $('tkLabel'), follow: $('tkFollow') };
const live = $('live'), ctx = live.getContext('2d');
const image = ctx.createImageData(256, 176), px = new Uint32Array(image.data.buffer);
const bgIndex = new Uint8Array(256 * 176);

let rom, prg, chr, levels, data, cells, frames, offsets, keys;
const state = new Uint8Array(512);
let frame = -1, playing = false, debt = 0, last = 0;

async function load() {
  ui.label.textContent = 'загрузка…';
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
  ui.seek.max = frames - 1;
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
  ui.level.innerHTML = '<option value="">к уровню…</option>' + starts.filter(([l]) => l < 12).map(([l, f]) => `<option value="${f}">уровень ${l + 1}</option>`).join('');
  seek(0);
  ui.label.textContent = '';
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
  if (n > 11) return;
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
  live.style.left = camX * z + 'px';
  live.style.top = camY * z + 'px';
  live.style.width = 256 * z + 'px';
  live.style.height = 176 * z + 'px';
  live.style.display = 'block';
  ui.seek.value = String(frame);
  ui.label.textContent = `кадр ${frame} · ${(frame / 60.0988).toFixed(1)} с · уровень ${n + 1}`;
  // Keep the camera in view.
  if (ui.follow.checked) {
    const w = $('wrap'), cx = (camX + 128) * z, cy = (camY + 88) * z;
    const left = w.scrollLeft, top = w.scrollTop, W = w.clientWidth, H = w.clientHeight;
    if (cx < left + W * 0.25 || cx > left + W * 0.75 || cy < top + H * 0.25 || cy > top + H * 0.75) w.scrollTo(cx - W / 2, cy - H / 2);
  }
}

function tick(now) {
  if (playing) {
    debt += Math.min(0.25, (now - last) / 1000) * 60.0988 * Number(ui.speed.value);
    while (debt >= 1 && frame < frames - 1) { apply(++frame); debt -= 1; }
    if (frame >= frames - 1) { playing = false; ui.play.textContent = '▶'; }
    draw();
  }
  last = now;
  requestAnimationFrame(tick);
}

ui.play.onclick = async () => {
  if (!data) await load();
  playing = !playing;
  ui.play.textContent = playing ? '⏸' : '▶';
  live.style.display = 'block';
};
ui.seek.oninput = () => { if (data) seek(Number(ui.seek.value)); };
ui.level.onchange = () => { if (data && ui.level.value !== '') seek(Number(ui.level.value)); ui.level.value = ''; };
requestAnimationFrame(tick);
