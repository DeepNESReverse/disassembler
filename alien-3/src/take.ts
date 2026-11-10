/**
 * A take from FCEUX (record_play.lua's format: fceux/tas_take.lua while it played Randil's TAS)
 * played on this NES in step: each frame the take's buttons, and at line 241 (where FCEUX's frame
 * ends) its RAM laid over ours — but not the stack, which holds our CPU's own return addresses
 * (after xrom-libs' replay-cli.ts), and not while the screen is off. `lead`: how many of the take's frames come before our first.
 */
import { readFileSync } from 'node:fs';
import type { Machine } from './machine.ts';

export interface Take { buttons: Uint8Array; changes: Uint32Array[] }

/** Parse a take: per frame, its buttons and the RAM changes (address << 8 | value). */
export function parseTake(path: string): Take {
  const buttons: number[] = [];
  const changes: Uint32Array[] = [];
  for (const line of readFileSync(path, 'utf8').split('\n')) {
    if (line.startsWith('f ')) { buttons.push(Number(line.split(' ')[2])); changes.push(new Uint32Array(0)); }
    else if (line.startsWith('r ') && buttons.length) {
      const body = line.slice(2), out = new Uint32Array(body.length / 6);
      for (let i = 0; i < out.length; i++) out[i] = (parseInt(body.slice(i * 6, i * 6 + 4), 16) << 8) | parseInt(body.slice(i * 6 + 4, i * 6 + 6), 16);
      changes[changes.length - 1] = out;
    }
  }
  return { buttons: Uint8Array.from(buttons), changes };
}

/** Play `take` on `m` from power-on; `each(n)` after our frame n. */
export function playTake(m: Machine, take: Take, lead: number, frames: number, each?: (n: number) => void) {
  const theirs = new Uint8Array(0x800);
  let next = 0, n = 0;
  const upTo = (k: number) => { for (; next <= k && next < take.changes.length; next++) for (const c of take.changes[next]) theirs[c >> 8] = c & 255; };
  m.nes.beforeVblank = () => {
    const at = n + lead;
    if (at >= take.buttons.length) return;
    upTo(at);
    // Not while the screen is off (line 8 drew no background): a level is loading, a long routine
    // that runs across frames — laid over mid-way, its pointers broke and the CPU jammed (take
    // frame 982, B15:$FE7F jumping to $0000). The game loads by itself; the overlay resumes after.
    if (!(m.lineMask[8] & 0x08)) return;
    m.ram.set(theirs.subarray(0, 0x100), 0);
    m.ram.set(theirs.subarray(0x200), 0x200);
  };
  for (n = 0; n < frames && n + lead < take.buttons.length; n++) {
    m.frame(take.buttons[n + lead]);
    each?.(n);
  }
}
