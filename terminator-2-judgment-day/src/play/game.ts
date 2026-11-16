/**
 * Terminator 2 played by hand in the browser (src/play/game.html, /play on the maps' server): the
 * cartridge on xrom-libs' NES at the NES's rate (powered on as FCEUX does, machine.ts), the pads from
 * the keyboard or a gamepad, the sound through @xromdev/apu, a save slot and a reset — and a weapon
 * from the start (STATUS §17): before every frame `$E9` (a gun in hand) and `$EA` (which, 0-6) are set
 * to the gun chosen, and `$EB` (its rounds) held at 56 if asked. The attack `$9DBA` fires while
 * `$E9` is not 0, so B shoots from level 1 on. After the Alien 3 folder's src/play/any.ts.
 */
import { Apu, mixApu, OutputFilters, type ChannelBuffers } from '@xromdev/apu';
import { BUTTON, Machine, loadState, saveState } from '../machine.ts';

const HZ = 60.0988;
const $ = (id: string) => document.getElementById(id) as HTMLElement & HTMLInputElement & HTMLSelectElement;

let m: Machine;
try {
  const response = await fetch('/rom');
  if (!response.ok) throw new Error(`${response.status} ${await response.text()}`);
  m = new Machine(new Uint8Array(await response.arrayBuffer()));
} catch (e) {
  $('error').textContent = `Did not start: ${e instanceof Error ? e.message : e}`;
  throw e;
}
$('cart').textContent = `mapper ${m.cart.mapper} (${m.nes.mapper.name}), PRG ${m.cart.prg.length / 1024} KB, CHR ${m.cart.chr.length / 1024} KB`;

// The weapon (STATUS §17): 'game' as the game gives it, 'fists', or a gun 0-6.
const r = m.ram;
let weapon = 'game';
$('weapon').onchange = () => {
  weapon = $('weapon').value;
  if (weapon === 'fists') r[0xe9] = 0;
  $('weapon').blur();
  toast(weapon === 'game' ? 'The game\'s own weapon' : weapon === 'fists' ? 'Fists' : `Gun ${weapon}`);
};
function arm() {
  if (weapon === 'game') return;
  if (weapon === 'fists') { r[0xe9] = 0; return; }
  r[0xe9] = 2;
  r[0xea] = Number(weapon);
  if ($('ammo').checked) r[0xeb] = 56;
}

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
// The browser lets a page start sound only after a key or a click on it: the speaker is made at
// once, and while the browser holds it suspended a notice over the picture asks for one.
let starting: Promise<void> | null = null;
async function startSound() {
  if (!speaker) {
    starting ??= makeSpeaker();
    await starting;
  }
  if (speaker) {
    if (speaker.context.state === 'suspended') await speaker.context.resume().catch(() => {});
    $('unmute').hidden = speaker.context.state !== 'suspended';
  }
}
async function makeSpeaker() {
  try {
    const context = new AudioContext({ latencyHint: 'interactive' });
    context.onstatechange = () => { $('unmute').hidden = context.state !== 'suspended'; };
    $('unmute').hidden = context.state !== 'suspended';
    await context.audioWorklet.addModule('/src/play/feed.js');
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

function step(quiet = false) {
  const frameStart = m.cpu.cycles;
  arm();
  m.frame(pad());
  sound(frameStart, quiet);
}

// Reset is power-on again (the state taken before the first frame); one save slot.
const powerOn = saveState(m);
function reset() { loadState(m, powerOn); toast('Reset'); }
let slot: ReturnType<typeof saveState> | null = null;
function save() { slot = saveState(m); toast('Saved'); }
function load() {
  if (!slot) return toast('The slot is empty');
  loadState(m, slot);
  toast('Loaded');
}
$('reset').onclick = () => { reset(); $('reset').blur(); };
$('save').onclick = save;
$('load').onclick = load;

addEventListener('keydown', (e) => {
  void startSound();
  if (e.code === 'Tab' || e.code in KEYS || e.code.startsWith('Shift')) e.preventDefault();
  if (e.repeat) return;
  held.add(e.code);
  if (e.code === 'KeyR') reset();
  if (e.code === 'KeyI') save();
  if (e.code === 'KeyP') load();
  if (e.code === 'Escape') { paused = !paused; toast(paused ? 'Paused' : 'Playing'); }
});
addEventListener('keyup', (e) => held.delete(e.code));
addEventListener('blur', () => held.clear());
addEventListener('pointerdown', () => void startSound());
void startSound();

// The clock: frames at the NES's rate, ×4 while Tab is held.
let last = performance.now(), debt = 0, lastInfo = 0;
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
  if (now - lastInfo > 150) {
    lastInfo = now;
    $('iFrame').textContent = String(m.nes.frame);
    $('iGun').textContent = r[0xe9] ? `${r[0xe9]} / ${r[0xea]}` : 'fists';
    $('iAmmo').textContent = String(r[0xeb]);
  }
  requestAnimationFrame(tick);
}
requestAnimationFrame(tick);
