# Battletoads — what was known before independent discovery started

Written 2026-10-21, before any discovery run, and committed so the date is on record.
Anything listed here **does not count as a discovery** when results are compared with the human
disassembly (`DisAssemble/Battletoads/Battletoads_with_ROM_addresses.lst`, the blind reference).

## Sources that are off limits during discovery

Everything in the Battletoads research repo derived from the reference listing:
the `.lst`/`.asm` files, `docs/*/RAM_MAP.md`, `tools/ram_profile_report.py`, `procedures/`,
`interesting_addresses/`, `rewrittenSubs.asm`, `rom_disassembly.*`, the workshop's generated data
(`battletoads-tools-next`), and the assistant's memory notes about Battletoads internals.
Discovery uses only: the ROM, emulators, and code written in this workspace.

## Facts already known to the assistant (from earlier sessions or a glance at the reference)

### Cartridge (also readable from the iNES header — not contamination, listed for completeness)
- Mapper 7 (AxROM), 256 KB PRG (16 × 16 KB), 8 KB CHR RAM, no CHR ROM.

### RAM (from earlier sessions that used the reference)
- An object table at `$03C1–$05AF`: 33 fields × 15 slots, stride `$0F`, slot 0 = player 1.
  Fields `$03DF`, `$04DE`, `$04ED`, `$0583`, `$05A1` are per-type scratch.
- Sound state `$0300–$03AF` (10 fields × 4 channels); player blocks `$03B1–$03C0`, `$05B0–$05D1`.
- Code copied into RAM at `$0782–$07FF` by `BANK7:8C6A`; operands patched by `BANK2:FE40/FE46`
  (step 6 from `$0796`). A text unpacker at `BANK6:E607` writes `$0700–$07EA`.
- Hot zero-page cells: `$0015` (written by `BANK6:863E`), `$0091`, `$0092`, `$0016`, `$0017`, `$001B`.
- `$0000–$0008` are scratch (`tmp_var_00..08`); `$0006` is used as a music pointer.

### Code labels seen in the reference header area (2026-10-21, before the blind rule)
- Around `BANK0:849E–84B2`: `jump_from_bank0`, `level1_some_cnt`, `upd_gfx_flag2` ("what to update
  — attrib, pal or something else"), `update_pal_reduce_val`, `some_sound_flag`, `frame_end_wait_nmi_`.
- RAM label names without addresses: `ppu_ctrl1_val`, `ppu_ctrl2_val`, `FrameCounter`,
  `FrameCounter_Even`, `Levels_passed_cnt`, `Continues_Player1`.
- Counts: 4576 labels, 1681 of them named by a person; 16 banks; the listing is an IDA export.

### Sound (decoded in earlier sessions, partly with the reference)
- The music driver, its track data and ROM spans; the pause melody is DPCM through a table at `$8502`.

### Graphics (earlier sessions)
- A metasprite format and per-character graphics sets exist (Pimple, Psyko Pig, Dark Queen frame `$81`);
  six "unused" tilemaps turned out to be reachable. Details are not remembered precisely and the
  files describing them are off limits.

### Public knowledge
- Rare, 1991. Level names: Ragnarok's Canyon, Wookie Hole, Turbo Tunnel, Arctic Caverns, Surf City,
  Karnath's Lair, Volkmire's Inferno, Intruder Excluder, Terra Tubes, Rat Race, Clinger Winger,
  The Revolution. The game is known for being demanding on emulator timing.
