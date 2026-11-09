# Spelunker (NES)

The Spelunker cave drawn whole from the cartridge with a TAS by yuigenron2 played over it.

## Getting it

```sh
git clone --recursive https://github.com/DeepNESReverse/disasm-spelunker
cd disasm-spelunker
npm run setup
```

The cartridge is not here and never will be: bring your own dump. `src/rom.ts` says where it is read from
(by default a library in `~/roms/dendy/nes`), and an environment variable named there overrides that.
`STATUS.md` has every finding with the experiment that proves it.

Run the tools from this folder, with Node 22 or newer:
`node --experimental-strip-types --no-warnings src/<tool>.ts`.

## The recordings

The speedrun as FCEUX played it is not in git. Download `disasm-spelunker-recordings.tar.xz` from this repository's
Releases and unpack it here with `tar -xJf`.
