# Alien 3 (NES)

All twelve levels of Alien 3 drawn whole from the cartridge and checked against the game frame by frame, with a TAS played over them.

## Getting it

```sh
git clone --recursive https://github.com/DeepNESReverse/disasm-alien-3
cd disasm-alien-3
npm run setup
```

The cartridge is not here and never will be: bring your own dump. `src/rom.ts` says where it is read from
(by default a library in `~/roms/dendy/nes`), and an environment variable named there overrides that.
`STATUS.md` has every finding with the experiment that proves it.

Run the tools from this folder, with Node 22 or newer:
`node --experimental-strip-types --no-warnings src/<tool>.ts`.

## The recordings

The speedrun as FCEUX played it is not in git. Download `disasm-alien-3-recordings.tar.xz` from this repository's
Releases and unpack it here with `tar -xJf`.
