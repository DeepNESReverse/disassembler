# disassembler

NES games taken apart straight from their cartridges: where the data lies in the ROM, the levels drawn whole from it
and checked against the game frame by frame, speedruns played over the maps, and what the automatic explorer found.
One folder per game:

| Folder | What is in it |
| --- | --- |
| [`alien-3/`](alien-3) | All twelve levels drawn whole from the cartridge, checked frame by frame, with a TAS over them. |
| [`battletoads/`](battletoads) | What the automatic explorer found: a disassembly with names from evidence, variables, maps, objects. |
| [`circus-charlie/`](circus-charlie) | The stages drawn from the cartridge with a TAS over them, and the explorer's findings. |
| [`spelunker/`](spelunker) | The cave drawn whole from the cartridge with a TAS by yuigenron2 played over it. |
| [`xevious/`](xevious) | The sixteen areas gathered from the game, checked frame by frame, and a sandbox to fit them into one map. |

## Getting it

```sh
git clone --recursive https://github.com/DeepNESReverse/disassembler
cd disassembler/<game>
npm run setup
```

Each game folder stands on its own: its README says how to run it, its `STATUS.md` has every finding with the
experiment that proves it. The shared parts are git submodules in each game's `libs/`:
[xrom-nes](https://github.com/DeepNESReverse/xrom-nes), [xrom-maps-run](https://github.com/DeepNESReverse/xrom-maps-run)
and [xrom-nes-explorer](https://github.com/DeepNESReverse/xrom-nes-explorer).

The cartridges are not here and never will be: bring your own dumps. The FCEUX recordings of the speedruns are in the
`recordings` release, one archive per game.

Each folder used to be its own `disasm-<game>` repository; their histories are kept here.
