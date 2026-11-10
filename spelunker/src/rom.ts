/** Where the cartridge is read from (in place, never copied into this repo), for the tools that run in Node. */
import { readFileSync } from 'node:fs';

export const ROM_PATH = process.env.SPELUNKER_ROM ?? `${process.env.HOME}/roms/dendy/nes/Spelunker (Japan).nes`;

export function romFile(): Uint8Array {
  return new Uint8Array(readFileSync(ROM_PATH));
}
