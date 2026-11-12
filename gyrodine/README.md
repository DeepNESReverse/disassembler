# Gyrodine (NES)

The whole flight of Gyrodine as one map, gathered from what the game itself draws during a playthrough and checked
against it frame by frame. Live at https://xrom.dev/games/gyrodine/maps.

## Getting it

```sh
git clone --recursive https://github.com/DeepNESReverse/disassembler
cd disassembler/gyrodine
npm run setup
```

The cartridge is not here and never will be: bring your own dump. `src/rom.ts` says where it is read from (by
default a library in `~/roms/dendy/nes`; `GYRODINE_ROM` overrides it). The run is replayed on nes-explorer's core
(`src/explorer.ts`: a checkout of [xrom-nes-explorer](https://github.com/DeepNESReverse/xrom-nes-explorer) in
`~/nes-explorer`, or `EXPLORER`). `STATUS.md` has every finding with the experiment that proves it.

Run the tools from this folder, with Node 22 or newer:

- `node --experimental-strip-types --no-warnings src/record.ts` — replays `runs/play-20261112-1219` (the
  pads of a playthrough, 74 513 frames) and gathers the field row by row into `runs/rows.json`, then checks it
  against every frame;
- `node --experimental-strip-types --no-warnings src/render.ts` — `out/map.png` (both nametables) and
  `out/whole.png` (the band the camera reaches);
- `node --experimental-strip-types src/play/server.ts` — the map on the shared maps page, http://127.0.0.1:4329/;
- `node --experimental-strip-types --no-warnings src/public.ts <dir>` — the same page as static files for the site.
