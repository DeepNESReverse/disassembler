-- Everything a movie (a TAS, a recorded run) does, as FCEUX plays it — for any game, in one pass:
--   f <frame> <buttons> <lagged>   the pad the movie gave (bit 0 A … bit 7 right), 1 if lagged
--   r <aaaavv…>                    the RAM bytes that changed since the frame before
--                                  (4 hex digits of address, 2 of value; the first frame: all 2 KB)
--   a <aaaavv…>                    the sound chip's register writes this frame, in order
--                                  ($4000-$4017 but $4014 and $4016: address, value)
-- The f/r lines are record_play.lua's take (xrom-libs/nes/fceux): replayable headless, the RAM
-- laid over; the a lines are the music and the sound effects, to play through @xromdev/apu.
--
-- Unlike record_play.lua it does not power the console on: the movie does. Start this script
-- first, then File > Movie > Play Movie. Turbo is fine: every frame is written. It writes to
-- movie_capture.play.txt next to this script; close FCEUX when the movie has ended.
local here = debug.getinfo(1, 'S').source:match('^@(.*/)') or './'
local out = assert(io.open(here .. 'movie_capture.play.txt', 'w'))
emu.registerexit(function() out:close() end)

local BUTTONS = { 'A', 'B', 'select', 'start', 'up', 'down', 'left', 'right' }
local sound = {}

-- The sound chip's registers: a write hook on each (the value comes as the hook's third argument
-- in FCEUX 2.2.3 and later).
local function onApu(address, size, value)
  if movie.mode() ~= 'playback' then return end
  if value == nil then return end
  sound[#sound + 1] = string.format('%04x%02x', address, value % 256)
end
for a = 0x4000, 0x4017 do
  if a ~= 0x4014 and a ~= 0x4016 then memory.registerwrite(a, 1, onApu) end
end

local last, lastFrame = nil, -1
emu.registerafter(function()
  if movie.mode() ~= 'playback' then sound = {}; return end
  local f = movie.framecount()
  if f == lastFrame then return end
  lastFrame = f
  local held = joypad.get(1)
  local mask = 0
  for bit, key in ipairs(BUTTONS) do if held[key] then mask = mask + 2 ^ (bit - 1) end end
  local ram = memory.readbyterange(0x0000, 0x0800)
  local changed = {}
  for i = 1, 0x800 do
    local v = ram:byte(i)
    if last == nil or v ~= last:byte(i) then changed[#changed + 1] = string.format('%04x%02x', i - 1, v) end
  end
  last = ram
  out:write(string.format('f %d %d %d\n', f, math.floor(mask), emu.lagged() and 1 or 0))
  if #changed > 0 then out:write('r ', table.concat(changed), '\n') end
  if #sound > 0 then out:write('a ', table.concat(sound), '\n') end
  sound = {}
  if f % 600 == 0 then out:flush() end
end)

gui.register(function()
  if movie.mode() == 'playback' then gui.text(8, 8, 'capture: frame ' .. movie.framecount()) end
end)
