/** Where the cartridge is read from (in place, never copied), for the tools that run in Node. */
import { readFileSync } from 'node:fs';

export const ROM_PATH =
  process.env.CLIFFHANGER_ROM ?? `${process.env.HOME}/roms/dendy/nes/Cliffhanger (USA).nes`;

export function romFile(): Uint8Array {
  return new Uint8Array(readFileSync(ROM_PATH));
}
