/**
 * The TAS on nes-explorer's core (STATUS §1: in step with FCEUX on every frame), with each visible
 * line's scroll kept: where in the 512 × 480 nametable plane it starts, and the PPU's mask and
 * control registers. The core is imported, never edited — its line drawer is wrapped on the instance.
 */
import { Core, parseRom, type Rom } from '../libs/nes-explorer/src/core/core.ts';
import { romFile } from './rom.ts';
import { readMovie, type MovieFrame } from './movie.ts';

export interface Replay {
  rom: Rom;
  core: Core;
  /** Per visible line of the frame just run: plane x (0-511), plane y (0-479), PPUMASK, PPUCTRL. */
  lineX: Int16Array;
  lineY: Int16Array;
  lineMask: Uint8Array;
  lineCtrl: Uint8Array;
  movie: MovieFrame[];
}

export function replay(): Replay {
  const rom = parseRom(romFile());
  const core = new Core(rom);
  const r: Replay = {
    rom,
    core,
    lineX: new Int16Array(240),
    lineY: new Int16Array(240),
    lineMask: new Uint8Array(240),
    lineCtrl: new Uint8Array(240),
    movie: readMovie(),
  };
  const c = core as unknown as {
    drawLine(line: number): void;
    refreshAddr: number;
    xOffset: number;
    mask: number;
    ctrl: number;
    render: boolean;
  };
  const draw = c.drawLine.bind(core);
  c.drawLine = (line: number) => {
    const v = c.refreshAddr;
    r.lineX[line] = ((v >> 10) & 1) * 256 + (v & 31) * 8 + c.xOffset;
    r.lineY[line] = ((v >> 11) & 1) * 240 + ((v >> 5) & 31) * 8 + ((v >> 12) & 7);
    r.lineMask[line] = c.mask;
    r.lineCtrl[line] = c.ctrl;
    draw(line);
  };
  c.render = true;
  return r;
}

/** The play field: from line 44 down; plane rows 5 (its last four lines only) to 29. */
export const FIELD_TOP = 44;
export const FIELD_ROWS = { first: 5, last: 29 };

/** The camera, $006B:$006A. */
export const cameraOf = (ram: Uint8Array) => ram[0x6b] * 256 + ram[0x6a];
