-- While FCEUX plays a movie (the TAS), write where the player is, frame by frame, for the maps:
--   <frame> <level $A8> <X> <Y> <prisoners left $0747>
-- to tas_trail.txt next to this script. Start this script first, then File > Movie > Play Movie
-- (the movie powers the console on; this script keeps running and writes from its first frame).
-- Turbo speed is fine: every frame is written. Close FCEUX when the movie has ended.
local here = debug.getinfo(1, 'S').source:match('^@(.*/)') or './'
local out = assert(io.open(here .. 'tas_trail.txt', 'w'))
emu.registerexit(function() out:close() end)
local last = -1
emu.registerafter(function()
  if movie.mode() ~= 'playback' then return end
  local f = movie.framecount()
  if f == last then return end
  last = f
  local x = memory.readbyte(0x0420) + 256 * memory.readbyte(0x0440)
  local y = memory.readbyte(0x0460) + 256 * memory.readbyte(0x0480)
  out:write(string.format('%d %d %d %d %d\n', f, memory.readbyte(0x00A8), x, y, memory.readbyte(0x0747)))
  if f % 600 == 0 then out:flush() end
end)
gui.register(function()
  if movie.mode() == 'playback' then gui.text(8, 8, 'trail: frame ' .. movie.framecount() .. '  level ' .. (memory.readbyte(0x00A8) + 1)) end
end)
