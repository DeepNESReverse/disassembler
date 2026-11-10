# Circus Charlie (Japan) — what was known before independent discovery

Written 2026-10-21 before any discovery run on this game. There is no human disassembly of it in the
workspace to compare with; the point of this game is to check that the explorer transfers to a
simple NROM game without manual tuning.

Known from earlier sessions (music and sprite work in the research repo and xrom-libs):
- Mapper 0 (NROM-128: 16 KB PRG, 8 KB CHR ROM), vertical mirroring — also in the iNES header.
- The music driver was decoded; collections were built from the cartridge.
- RAM `$0000` was used as the game phase (8 = a stage's bonus count) and `$0063` as the stage, in
  `xrom-libs/nes/fceux/record_sprites.lua`; the sprite page is `$0200`.
- Konami, 1986; stages: lion and rings, tightrope with monkeys, trampolines/dolphins, ball rolling,
  horse, trapeze (public knowledge).
