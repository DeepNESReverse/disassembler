/** Where the cartridge is read from (in place, never copied into this repo). */
import { readFileSync } from 'node:fs';

export const ROM_PATH = process.env.GYRODINE_ROM ?? `${process.env.HOME}/roms/dendy/nes/Gyrodine (Japan).nes`;

export function romFile(): Uint8Array {
  return new Uint8Array(readFileSync(ROM_PATH));
}
