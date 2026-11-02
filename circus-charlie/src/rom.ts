/** Where the cartridge is read from (in place, never copied), for the tools that run in Node. */
import { readFileSync } from 'node:fs';

export const ROM_PATH =
  process.env.CIRCUS_ROM ??
  `${process.env.HOME}/nes-explorer/games/circus-charlie/rom/Circus Charlie (Japan).nes`;

export function romFile(): Uint8Array {
  return new Uint8Array(readFileSync(ROM_PATH));
}
