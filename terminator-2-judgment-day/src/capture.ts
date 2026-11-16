/**
 * The FCEUX capture (fceux/movie_capture.lua's .play.txt), read frame by frame: the pad, whether
 * the frame lagged, the whole RAM after it, the sound-chip writes and the mapper/PPU-control writes.
 */
import { readFileSync } from 'node:fs';

export interface CaptureFrame {
  frame: number;
  pad: number;
  lagged: boolean;
  ram: Uint8Array;
  apu: [number, number][];
  mapper: [number, number][];
}

function pairs(body: string): [number, number][] {
  const out: [number, number][] = [];
  for (let i = 0; i + 6 <= body.length; i += 6) {
    out.push([parseInt(body.slice(i, i + 4), 16), parseInt(body.slice(i + 4, i + 6), 16)]);
  }
  return out;
}

export function* readCapture(path = 'fceux/movie_capture.play.txt'): Generator<CaptureFrame> {
  const ram = new Uint8Array(0x800);
  let cur: CaptureFrame | null = null;
  for (const line of readFileSync(path, 'utf8').split('\n')) {
    const kind = line[0];
    if (kind === 'f') {
      if (cur) yield cur;
      const [, f, pad, lag] = line.split(' ');
      cur = { frame: +f, pad: +pad, lagged: lag === '1', ram, apu: [], mapper: [] };
    } else if (cur && kind === 'r') {
      for (const [a, v] of pairs(line.slice(2).trim())) ram[a] = v;
    } else if (cur && kind === 'a') cur.apu = pairs(line.slice(2).trim());
    else if (cur && kind === 'm') cur.mapper = pairs(line.slice(2).trim());
  }
  if (cur) yield cur;
}
