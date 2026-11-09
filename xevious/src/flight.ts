/**
 * A flight over the map on the headless NES, nothing pressed but Start (on frame 320; the title
 * ignores it earlier). `$3B` is the explosion counter read by the routine at $F700: held at 0 the
 * Solvalou never dies, so the field runs on without the game's rewinds.
 *
 * `world` counts the pixels the field has moved, half a pixel a frame. The camera is the game's last
 * $2005 y plus 240 by PPUCTRL bit 1, over two stacked nametables (horizontal mirroring).
 */
import { BUTTON, Nes, parseRom } from '../libs/nes/src/nes.ts';
import { Ppu } from '../libs/nes/src/ppu.ts';
import { romFile } from './rom.ts';

export type Snapshot = ReturnType<Ppu['snapshot']>;
export type Moment = { frame: number; world: number; y: number; moved: boolean; snap: Snapshot };

const IMMORTAL_FROM = 340;

export function fly(frames: number, each: (m: Moment) => void) {
  const cart = parseRom(romFile());
  const nes = new Nes(cart);
  const ppu = new Ppu(cart, nes.mapper);
  (nes as unknown as { ppu: Ppu }).ppu = ppu;
  const machine = nes as unknown as { write: (at: number, value: number) => void; ram: Uint8Array };
  const write = machine.write.bind(nes);
  let scroll: number[] = [];
  machine.write = (at, value) => {
    if (at === 0x2005) scroll.push(value);
    write(at, value);
  };
  let world = 0;
  let last = -1;
  for (let f = 0; f < frames; f++) {
    nes.buttons = f >= 320 && f < 326 ? BUTTON.start : 0;
    scroll = [];
    if (f > IMMORTAL_FROM) machine.ram[0x3b] = 0;
    nes.runFrame();
    if (f < IMMORTAL_FROM || scroll.length < 2) continue;
    const snap = ppu.snapshot();
    const y = scroll[scroll.length - 1] + (snap.ctrl & 2 ? 240 : 0);
    const step = last < 0 ? 0 : (last - y + 480) % 480;
    if (step > 8) throw new Error(`the field jumped on frame ${nes.frame}: ${last} -> ${y}`);
    world += step;
    last = y;
    each({ frame: nes.frame, world, y, moved: step > 0, snap });
  }
}

/** Row `line` (0-59) of the two stacked nametables: its 32 tiles and each cell's palette. */
export function tableRow(snap: Snapshot, line: number) {
  const base = line >= 30 ? 0x800 : 0;
  const row = line % 30;
  const tiles = Array.from(snap.nametables.subarray(base + row * 32, base + row * 32 + 32));
  const palettes = tiles.map((_, c) => (snap.nametables[base + 0x3c0 + (row >> 2) * 8 + (c >> 2)] >> (((row & 2) << 1) | (c & 2))) & 3);
  return { tiles, palettes };
}
