/**
 * FCEUX's movie_capture.lua log, read: per movie frame the pad, whether it lagged, the RAM changes
 * and the sound chip's writes. Frames come back in order with the whole RAM after each.
 */
import { readFileSync } from 'node:fs';

export interface MovieFrame {
  frame: number;
  buttons: number;
  lagged: boolean;
  /** The whole 2 KB RAM after the frame, as FCEUX had it. */
  ram: Uint8Array;
  /** The APU writes of the frame, in order: [address, value]. */
  apu: [number, number][];
}

export const MOVIE_PATH = new URL('../fceux/movie_capture.play.txt', import.meta.url).pathname;

export function readMovie(path = MOVIE_PATH): MovieFrame[] {
  const out: MovieFrame[] = [];
  const ram = new Uint8Array(0x800);
  let cur: MovieFrame | undefined;
  for (const line of readFileSync(path, 'utf8').split('\n')) {
    const [kind, a, b, c] = line.split(' ');
    if (kind === 'f') {
      cur = { frame: Number(a), buttons: Number(b), lagged: c === '1', ram: ram.slice(), apu: [] };
      out.push(cur);
    } else if (kind === 'r' && cur) {
      // The last line may be cut off when FCEUX closed mid-write: only whole entries count.
      for (let i = 0; i + 6 <= a.length; i += 6) ram[parseInt(a.slice(i, i + 4), 16)] = parseInt(a.slice(i + 4, i + 6), 16);
      cur.ram = ram.slice();
    } else if (kind === 'a' && cur) {
      for (let i = 0; i + 6 <= a.length; i += 6) cur.apu.push([parseInt(a.slice(i, i + 4), 16), parseInt(a.slice(i + 4, i + 6), 16)]);
    }
  }
  return out;
}
