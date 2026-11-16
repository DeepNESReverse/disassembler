/** Where the cartridge is read from (in place, never copied), for the tools that run in Node. */
import { readFileSync } from 'node:fs';

export const ROM_PATH =
  process.env.T2_ROM ?? `${process.env.HOME}/roms/dendy/nes/Terminator 2 - Judgment Day (USA).nes`;

export function romFile(): Uint8Array {
  return new Uint8Array(readFileSync(ROM_PATH));
}
