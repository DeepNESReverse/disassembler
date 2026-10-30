/**
 * The player's page: Alien 3 on xrom-libs' NES in the browser, at the NES's rate, the pads from the
 * keyboard (nes-explorer's keys) or a gamepad, the sound through @xromdev/apu, and the switches:
 *   - a level: from a save state taken on the level card, $A8 set (STATUS.md §1);
 *   - the timer's start ($07A8: header bytes $00-$0B, STATUS.md §8);
 *   - health held ($074A = $18), the timer held ($0741-$0744 = 04:00), enemies' blows off ($03C8);
 *   - no-clip: the player's X/Y written each frame before the game's logic, moved by the pad,
 *     kept on the camera's screen so that the camera follows (src/noclip.ts `lead`);
 *   - the exit off: B13:$B9CB sent to its RTS at $B9CE (src/noclip.ts).
 */
import { Apu, mixApu, OutputFilters, type ChannelBuffers } from '@xromdev/apu';
import { BUTTON, Machine, loadState, saveState } from '../machine.ts';
import { toCard } from '../path.ts';
import { Level, LEVELS } from '../level.ts';

const HZ = 60.0988;
const EXIT_JUMP = 0xb9cb, EXIT_RTS = 0xb9ce;
const $ = (id: string) => document.getElementById(id) as HTMLElement & HTMLInputElement & HTMLSelectElement;

const rom = new Uint8Array(await (await fetch('/rom')).arrayBuffer());
const m = new Machine(rom);
const r = m.ram;
const levels = Array.from({ length: LEVELS }, (_, n) => new Level(m.cart.prg, n));
const fixed = (a: number) => m.cart.prg[0x1c000 + (a - 0xc000)];
const exits = Array.from({ length: LEVELS }, (_, n) => [
  ((fixed(0xfe24 + 2 * n) | (fixed(0xfe25 + 2 * n) << 8)) << 16) >> 16,
  ((fixed(0xfe3c + 2 * n) | (fixed(0xfe3d + 2 * n) << 8)) << 16) >> 16,
]);

// The picture.
const canvas = $('screen') as unknown as HTMLCanvasElement;
const ctx = canvas.getContext('2d')!;
const image = ctx.createImageData(256, 240);
const rgba = new Uint32Array(image.data.buffer);
function draw() {
  const px = m.ppu.pixels;
  for (let i = 0; i < px.length; i++) {
    const p = px[i];
    rgba[i] = 0xff000000 | ((p & 0xff) << 16) | (p & 0xff00) | ((p >> 16) & 0xff);
  }
  ctx.putImageData(image, 0, 0);
}

let toastTimer = 0;
function toast(text: string) {
  const t = $('toast');
  t.textContent = text;
  t.classList.add('show');
  clearTimeout(toastTimer);
  toastTimer = window.setTimeout(() => t.classList.remove('show'), 1600);
}

// The sound: the game's APU writes (Nes.writes, by CPU cycle) played a frame at a time.
let speaker: { context: AudioContext; node: AudioWorkletNode; chip: Apu; filters: OutputFilters; levels: ChannelBuffers; rate: number } | null = null;
let sampleDebt = 0;
async function startSound() {
  if (speaker) return;
  try {
    const context = new AudioContext({ latencyHint: 'interactive' });
    await context.audioWorklet.addModule('/src/play/sound.js');
    const node = new AudioWorkletNode(context, 'feed', { outputChannelCount: [1] });
    node.connect(context.destination);
    const rate = context.sampleRate;
    const n = Math.ceil(rate / HZ) + 2;
    speaker = {
      context, node, rate,
      chip: new Apu(rate, { memory: (a: number) => m.peek(a) }),
      filters: new OutputFilters(rate, false),
      levels: { pulse1: new Uint8Array(n), pulse2: new Uint8Array(n), triangle: new Uint8Array(n), noise: new Float64Array(n), dmc: new Uint8Array(n) },
    };
  } catch (e) {
    toast(`Sound did not start: ${e}`);
  }
}
function sound(frameStart: number, quiet: boolean) {
  const writes = m.nes.writes;
  if (!speaker) { writes.length = 0; return; }
  const { chip, levels: lv, filters, rate, node } = speaker;
  if (quiet || !$('sound').checked) {
    for (const w of writes) chip.write(w.address, w.value);
    writes.length = 0;
    return;
  }
  const cycles = m.cpu.cycles - frameStart;
  sampleDebt += rate / HZ;
  const count = Math.floor(sampleDebt);
  sampleDebt -= count;
  let at = 0;
  for (const w of writes) {
    const pos = Math.min(count, Math.max(0, Math.round(((w.cycle - frameStart) / cycles) * count)));
    if (pos > at) { chip.render(pos - at, lv, at); at = pos; }
    chip.write(w.address, w.value);
  }
  if (count > at) chip.render(count - at, lv, at);
  writes.length = 0;
  const volume = Number($('volume').value);
  const out = new Float32Array(count);
  for (let i = 0; i < count; i++) out[i] = volume * 2.2 * filters.step(mixApu(lv.pulse1[i], lv.pulse2[i], lv.triangle[i], lv.noise[i], lv.dmc[i]));
  node.port.postMessage(out, [out.buffer]);
}

// The pads: nes-explorer's keys, and the first gamepad.
const KEYS: Record<string, number> = {
  KeyW: BUTTON.up, KeyA: BUTTON.left, KeyS: BUTTON.down, KeyD: BUTTON.right,
  KeyJ: BUTTON.A, KeyK: BUTTON.B, Enter: BUTTON.start, ShiftRight: BUTTON.select,
};
const held = new Set<string>();
let paused = false;
function pad(): number {
  let b = 0;
  for (const k of held) b |= KEYS[k] ?? 0;
  const g = navigator.getGamepads?.()[0];
  if (g) {
    const p = (i: number) => g.buttons[i]?.pressed;
    if (p(0)) b |= BUTTON.A;
    if (p(2) || p(1)) b |= BUTTON.B;
    if (p(9)) b |= BUTTON.start;
    if (p(8)) b |= BUTTON.select;
    if (p(12) || g.axes[1] < -0.5) b |= BUTTON.up;
    if (p(13) || g.axes[1] > 0.5) b |= BUTTON.down;
    if (p(14) || g.axes[0] < -0.5) b |= BUTTON.left;
    if (p(15) || g.axes[0] > 0.5) b |= BUTTON.right;
  }
  // Opposite directions cancel, as on a pad.
  if ((b & BUTTON.left) && (b & BUTTON.right)) b &= ~(BUTTON.left | BUTTON.right);
  if ((b & BUTTON.up) && (b & BUTTON.down)) b &= ~(BUTTON.up | BUTTON.down);
  return b;
}

// The switches.
const signed = (lo: number, hi: number) => ((r[lo] | (r[hi] << 8)) << 16) >> 16;
let flyX = 0, flyY = 0;
let buttons = 0;
m.hooks.exec = (pc) => {
  if (pc === EXIT_JUMP && $('noexit').checked && m.bankAt(pc) === 13) m.cpu.pc = EXIT_RTS;
};
m.nes.beforeVblank = () => {
  if ($('health').checked) r[0x74a] = 0x18;
  // The game's own invulnerability timer, held: no enemy hit gets through (B14:$C794, STATUS §16).
  if ($('untouchable').checked) r[0x3c8] = 0x64;
  if ($('timer').checked) { r[0x741] = 0; r[0x742] = 4; r[0x743] = 0; r[0x744] = 0; }
  if ($('noclip').checked) {
    const speed = held.has('ShiftLeft') ? 4 : 2;
    if (buttons & BUTTON.left) flyX -= speed;
    if (buttons & BUTTON.right) flyX += speed;
    if (buttons & BUTTON.up) flyY -= speed;
    if (buttons & BUTTON.down) flyY += speed;
    // On the camera's screen, or the camera stops following (it reads the screen X as one byte).
    const camX = signed(0x1a, 0x1b), camY = signed(0x1c, 0x1d);
    flyX = Math.max(camX + 24, Math.min(camX + 232, flyX));
    flyY = Math.max(camY + 24, Math.min(camY + 168, flyY));
    r[0x420] = flyX & 255; r[0x440] = (flyX >> 8) & 255;
    r[0x460] = flyY & 255; r[0x480] = (flyY >> 8) & 255;
  }
};
function noclipChanged() {
  if ($('noclip').checked) {
    flyX = r[0x420] | (r[0x440] << 8);
    flyY = r[0x460] | (r[0x480] << 8);
    $('noexit').checked = true;
  }
}
$('noclip').onchange = noclipChanged;

function step(quiet = false) {
  buttons = pad();
  const frameStart = m.cpu.cycles;
  // With no-clip on, the directions are ours: the game sees only the other buttons.
  const dirs = BUTTON.up | BUTTON.down | BUTTON.left | BUTTON.right;
  m.frame($('noclip').checked ? buttons & ~dirs : buttons);
  sound(frameStart, quiet);
  if ($('noclip').checked) flown = true;
  look();
}

// What the camera shows while the player plays (for the maps' "hidden from the player" layer):
// every camera position ($1A-$1D) per level, from the first move of the player after the level
// starts, sent to the server (runs/play-seen.jsonl) every 2 s. Not while flying through walls, nor
// after it until a level is started anew (a state saved in flight, loaded, counts as flight).
let flown = false, startPos = '', moved = false, lookLevel = -1;
const cams = new Map<number, Set<string>>(), fresh: [number, number, number][] = [];
function look() {
  const level = r[0xa8];
  if (level !== lookLevel) { lookLevel = level; startPos = ''; moved = false; }
  if (flown || level >= LEVELS) return;
  const p = `${r[0x420]},${r[0x440]},${r[0x460]},${r[0x480]}`;
  if (!moved) { if (!startPos) startPos = p; if (p === startPos) return; moved = true; }
  const cx = ((r[0x1a] | (r[0x1b] << 8)) << 16) >> 16, cy = ((r[0x1c] | (r[0x1d] << 8)) << 16) >> 16;
  const k = `${cx},${cy}`;
  let set = cams.get(level);
  if (!set) cams.set(level, (set = new Set()));
  if (set.has(k)) return;
  set.add(k);
  fresh.push([level + 1, cx, cy]);
}
setInterval(() => {
  if (!fresh.length) return;
  const body = JSON.stringify(fresh.splice(0));
  fetch('/seen', { method: 'POST', body }).catch(() => {});
}, 2000);

// Levels: a state on the level card, $A8 and the timer's choice set there (as the tools do).
for (let n = 0; n < LEVELS; n++) {
  const o = document.createElement('option');
  o.value = String(n);
  o.textContent = `${n + 1}${(n + 1) % 3 === 0 ? ' — boss' : ''}`;
  $('level').append(o);
}
const powerOn = saveState(m);
toCard(m);
const card = saveState(m);
function startLevel(n: number) {
  loadState(m, card);
  r[0xa8] = n;
  r[0x7a8] = Number($('difficulty').value);
  m.nes.writes.length = 0;
  if ($('noclip').checked) { $('noclip').checked = false; }
  flown = false; startPos = ''; moved = false;
  toast(`Level ${n + 1}`);
}
$('go').onclick = () => { startLevel(Number($('level').value)); $('go').blur(); };
$('power').onclick = () => {
  loadState(m, powerOn);
  $('noclip').checked = false;
  flown = false;
  toast('From power-on: Start, then Start on the menu');
  $('power').blur();
};
let slot: ReturnType<typeof saveState> | null = null;
let slotFly: [number, number] = [0, 0], slotFlown = false;
function save() { slot = saveState(m); slotFly = [flyX, flyY]; slotFlown = flown; toast('Saved'); }
function load() {
  if (!slot) return toast('The slot is empty');
  loadState(m, slot);
  [flyX, flyY] = slotFly;
  flown = slotFlown;
  toast('Loaded');
}
$('save').onclick = save;
$('load').onclick = load;

addEventListener('keydown', (e) => {
  if ((e.target as HTMLElement).tagName === 'SELECT') return;
  void startSound();
  if (e.code === 'Tab' || e.code in KEYS || e.code.startsWith('Shift')) e.preventDefault();
  if (e.repeat) return;
  held.add(e.code);
  const flip = (id: string, name: string) => { $(id).checked = !$(id).checked; $(id).dispatchEvent(new Event('change')); toast(`${name}: ${$(id).checked ? 'on' : 'off'}`); };
  if (e.code === 'KeyQ') flip('health', 'Health');
  if (e.code === 'KeyT') flip('timer', 'Timer');
  if (e.code === 'KeyF') flip('noclip', 'Through walls');
  if (e.code === 'KeyE') flip('untouchable', 'Untouchable');
  if (e.code === 'KeyI') save();
  if (e.code === 'KeyP') load();
  if (e.code === 'Escape') { paused = !paused; toast(paused ? 'Paused' : 'Playing'); }
});
addEventListener('keyup', (e) => held.delete(e.code));
addEventListener('blur', () => held.clear());
addEventListener('pointerdown', () => void startSound());

// The panel's numbers, a few times a second.
let lastInfo = 0;
function info(now: number) {
  if (now - lastInfo < 150) return;
  lastInfo = now;
  const n = r[0xa8];
  const px = signed(0x420, 0x440), py = signed(0x460, 0x480);
  $('iLevel').textContent = `${n + 1} ($${n.toString(16).toUpperCase().padStart(2, '0')})`;
  $('iPlayer').textContent = `${px}, ${py}`;
  $('iCamera').textContent = `${signed(0x1a, 0x1b)}, ${signed(0x1c, 0x1d)}`;
  // The game moves the camera vertically only while the player's X high byte is odd (B15:$FAEB).
  const band = r[0x440];
  $('iBand').textContent = `${band}: ${band & 1 ? 'up and down too' : 'sideways only'}`;
  const lv = levels[n];
  if (lv && px >= 0 && py >= 0 && px < lv.widthTiles * 8 && py < lv.heightTiles * 8) {
    const page = Math.floor(py / 240), row = page * 8 + Math.floor((py % 240) / 32), col = px >> 5;
    $('iBlock').textContent = `${col}, ${row}: #${lv.block(col, row)}`;
  } else $('iBlock').textContent = '—';
  $('iExit').textContent = exits[n] ? `${exits[n][0]}, ${exits[n][1]}` : '—';
  $('iHealth').textContent = String(r[0x74a]);
  $('iTimer').textContent = `${r[0x741]}${r[0x742]}:${r[0x743]}${r[0x744]}`;
  $('iFrame').textContent = String(m.nes.frame);
}

// The clock: frames at the NES's rate, ×4 while Tab is held.
let last = performance.now(), debt = 0;
function tick(now: number) {
  debt += Math.min(0.25, (now - last) / 1000) * HZ;
  last = now;
  if (paused) debt = 0;
  const turbo = held.has('Tab');
  while (debt >= 1) {
    for (let i = 0; i < (turbo ? 4 : 1); i++) step(turbo);
    debt -= 1;
  }
  draw();
  info(now);
  requestAnimationFrame(tick);
}
startLevel(0);
requestAnimationFrame(tick);
