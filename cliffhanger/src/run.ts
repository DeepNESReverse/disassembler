/**
 * The TAS played on this NES in step with FCEUX (proven by sync.ts over the whole movie, STATUS §1):
 * a frame of FCEUX's ends at line 241 before the NMI, so the pad changes there.
 *
 *   const run = new Run();  run.to(5000);  // the machine as FCEUX had it after movie frame 5000
 *
 * After `to(f)` the RAM is FCEUX's after frame f (as the capture logs it) and the PPU's picture is
 * the frame FCEUX showed then.
 */
import { readFileSync } from 'node:fs';
import { Machine } from './machine.ts';
import { romFile } from './rom.ts';

export const FM2 = new URL('../fceux/klmz-cliffhanger.fm2', import.meta.url).pathname;

/** The .fm2's pad 1 per line, as this NES's bits (A 1 … right 128). Line i is movie frame i + 1. */
export function fm2Pads(path = FM2): number[] {
  const bits = [128, 64, 32, 16, 8, 4, 2, 1];
  return readFileSync(path, 'utf8')
    .split('\n')
    .filter((l) => l.startsWith('|'))
    .map((l) => [...(l.split('|')[2] ?? '')].reduce((b, c, i) => (c !== '.' && c !== ' ' ? b | bits[i] : b), 0));
}

/** The capture frame this NES's first line 241 ends (sync.ts --off 2). */
export const FIRST = 2;

export class Run {
  readonly m: Machine;
  readonly pads = fm2Pads();
  /** The movie frame the last line 241 ended. */
  frame = FIRST - 1;

  /**
   * FCEUX's RAM per movie frame, laid over this NES's at the frame's line 241 from `overlayFrom`
   * on. Needed from movie frame 24 913, where this NES, a little ahead of FCEUX in the last
   * fight, takes another way (STATUS §10).
   */
  overlay: Map<number, Uint8Array> | null = null;
  overlayFrom = Infinity;

  constructor(m = new Machine(romFile())) {
    this.m = m;
    m.nes.beforeVblank = () => {
      this.frame++;
      const theirs = this.frame >= this.overlayFrom ? this.overlay?.get(this.frame) : undefined;
      if (theirs) m.ram.set(theirs);
      m.nes.buttons = this.pads[this.frame] ?? 0; // movie frame frame + 1 is line `frame`
    };
  }

  /** Follow the FCEUX capture's RAM from movie frame `from` on (see `overlay`). */
  follow(capture: Iterable<{ frame: number; ram: Uint8Array }>, from: number) {
    this.overlay = new Map();
    for (const c of capture) if (c.frame >= from) this.overlay.set(c.frame, c.ram.slice());
    this.overlayFrom = from;
  }

  /** Run until movie frame `f` has ended and its picture is drawn. */
  to(f: number) {
    while (this.frame < f) this.m.frame(this.m.nes.buttons);
  }
}
