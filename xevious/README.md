# Xevious (NES)

The sixteen areas of Xevious, gathered from what the game itself draws and checked against it frame by frame. `src/play/puzzle.html` is a sandbox for fitting them into one map.

## Getting it

```sh
git clone --recursive https://github.com/DeepNESReverse/disassembler
cd disassembler/xevious
npm run setup
```

The cartridge is not here and never will be: bring your own dump. `src/rom.ts` says where it is read from
(by default a library in `~/roms/dendy/nes`), and an environment variable named there overrides that.
`STATUS.md` has every finding with the experiment that proves it.

Run the tools from this folder, with Node 22 or newer:
`node --experimental-strip-types --no-warnings src/<tool>.ts`.
