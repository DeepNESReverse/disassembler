# Capturing the TAS in FCEUX (one pass)

1. FCEUX: File > Open ROM — `~/Downloads/Terminator 2 - Judgment Day (USA).zip` (the iNES file
   TASVideos lists; not the NES 2.0 copy in ~/roms/dendy). Config > Sound off makes it faster.
2. File > Lua > New Lua Script Window → Browse → `fceux/movie_capture.lua` → Run.
3. File > Movie > Play Movie → `fceux/goofydylan8-terminator2.fm2` (say yes if FCEUX warns about
   the checksum), Read-only on.
4. Turbo (Tab held or NES > Emulation Speed > Turbo). The corner says "capture: frame N".
5. Check by eye that it syncs: about frame 1530 the T-800 is already walking right in level 1, and
   at the end Sarah and John are reached (frame 42 824).
6. When the movie has ended, close FCEUX. The result is `fceux/movie_capture.play.txt`
   (~40 MB, gitignored). If FCEUX dies half way, start again the same way: the script goes on into
   `movie_capture.part2.play.txt`.
