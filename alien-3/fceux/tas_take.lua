-- A take of a movie as FCEUX plays it, in record_play.lua's format (xrom-libs/nes/fceux), for
-- replaying headless in step (the RAM laid over every frame): while a movie plays back, each frame
--   f <frame> <buttons> <lagged>     the pad (bit 0 A … bit 7 right) the movie gave
--   r <aaaavv…>                      the RAM bytes that changed since the frame before
-- (the first frame's r line is the whole 2 KB), to tas_take.play.txt next to this script.
-- Unlike record_play.lua it does not power the console on: the movie does. Start this script
-- first, then File > Movie > Play Movie. Turbo is fine. Close FCEUX when the movie has ended.
local here = debug.getinfo(1, 'S').source:match('^@(.*/)') or './'
local out = assert(io.open(here .. 'tas_take.play.txt', 'w'))
emu.registerexit(function() out:close() end)
local BUTTONS = { 'A', 'B', 'select', 'start', 'up', 'down', 'left', 'right' }
local last, lastFrame = nil, -1
emu.registerafter(function()
  if movie.mode() ~= 'playback' then return end
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
  if f % 600 == 0 then out:flush() end
end)
gui.register(function()
  if movie.mode() == 'playback' then gui.text(8, 8, 'take: frame ' .. movie.framecount()) end
end)
