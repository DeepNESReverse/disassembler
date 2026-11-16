/**
 * An FCEUX movie (.fm2) read into pads: `pads[k]` is what pad 1 held on movie frame k (FCEUX's
 * movie.framecount() after that frame, 1 on), as bits A=0 … right=7 like the capture's `f` lines.
 * An .fm2 row writes a pad as "RLDUTSBA": the first character is right (bit 7), the last A (bit 0).
 * `pad2` is the same for the second pad (goofydylan8's TAS has a four score on and presses pad 2's
 * B once, on row 36126 — whether the game reads it is for the sync to tell).
 */
import { readFileSync } from 'node:fs';

export interface Movie {
  header: Record<string, string>;
  pads: number[];
  pad2: number[];
  /** Rows with a soft reset or power command (the first field), by movie frame. */
  commands: Map<number, number>;
}

function bits(field: string): number {
  let b = 0;
  for (let i = 0; i < 8 && i < field.length; i++) if (field[i] !== '.' && field[i] !== ' ') b |= 1 << (7 - i);
  return b;
}

export function readMovie(path = 'fceux/goofydylan8-terminator2.fm2'): Movie {
  const header: Record<string, string> = {};
  const pads = [0];
  const pad2 = [0];
  const commands = new Map<number, number>();
  for (const line of readFileSync(path, 'utf8').split('\n')) {
    if (line[0] !== '|') {
      const sp = line.indexOf(' ');
      if (sp > 0) header[line.slice(0, sp)] = line.slice(sp + 1).trim();
      continue;
    }
    const f = line.split('|');
    const cmd = Number(f[1]);
    if (cmd) commands.set(pads.length, cmd);
    pads.push(bits(f[2] ?? ''));
    pad2.push(bits(f[3] ?? ''));
  }
  return { header, pads, pad2, commands };
}
