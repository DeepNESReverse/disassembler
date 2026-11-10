# Circus Charlie (NES)

The stages of Circus Charlie drawn from the cartridge with a TAS played over them, and in `explorer/` what the automatic explorer found in the game.

## Getting it

```sh
git clone --recursive https://github.com/DeepNESReverse/disassembler
cd disassembler/circus-charlie
npm run setup
```

The cartridge is not here and never will be: bring your own dump. `src/rom.ts` says where it is read from
(by default a library in `~/roms/dendy/nes`), and an environment variable named there overrides that.
`STATUS.md` has every finding with the experiment that proves it.

Run the tools from this folder, with Node 22 or newer:
`node --experimental-strip-types --no-warnings src/<tool>.ts`.

## The recordings

The speedrun as FCEUX played it is not in git. Download `disasm-circus-charlie-recordings.tar.xz` from the `recordings` release of
this repository and unpack it here with `tar -xJf`.
