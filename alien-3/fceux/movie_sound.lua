-- Only the sound of a movie (a TAS, a recorded run), as FCEUX plays it: every frame
--   f <frame>                 the movie's frame
--   a <aaaavv…>               the sound chip's register writes that frame, in order
--                             ($4000-$4017 but $4014 and $4016: 4 hex digits of address, 2 of value)
-- — the music and the sound effects, to play through @xromdev/apu in step with a take of the same
-- movie (its frames are the same numbers). movie_capture.lua does this and the RAM in one pass.
--
-- It does not power the console on: the movie does. Start this script first, then File > Movie >
-- Play Movie. Turbo is fine: every frame is written. It writes to movie_sound.txt next to this
-- script; close FCEUX when the movie has ended. (The written value comes as the write hook's third
-- argument, FCEUX 2.2.3 and later.)
local here = debug.getinfo(1, 'S').source:match('^@(.*/)') or './'
local out = assert(io.open(here .. 'movie_sound.txt', 'w'))
emu.registerexit(function() out:close() end)

local sound = {}
local function onApu(address, size, value)
  if movie.mode() ~= 'playback' or value == nil then return end
  sound[#sound + 1] = string.format('%04x%02x', address, value % 256)
end
for a = 0x4000, 0x4017 do
  if a ~= 0x4014 and a ~= 0x4016 then memory.registerwrite(a, 1, onApu) end
end

local lastFrame = -1
emu.registerafter(function()
  if movie.mode() ~= 'playback' then sound = {}; return end
  local f = movie.framecount()
  if f == lastFrame then return end
  lastFrame = f
  out:write('f ', f, '\n')
  if #sound > 0 then out:write('a ', table.concat(sound), '\n') end
  sound = {}
  if f % 600 == 0 then out:flush() end
end)

gui.register(function()
  if movie.mode() == 'playback' then gui.text(8, 8, 'sound: frame ' .. movie.framecount()) end
end)
