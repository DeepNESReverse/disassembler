-- The end of a movie and what the game does after it, as FCEUX plays it: the same lines as
-- movie_capture.lua (f, r, a, m), from movie frame FROM on, and on past the movie's last frame for
-- AFTER more frames with nothing pressed (the game finishing by itself: the last boss's fall).
--
-- Start this script first, then File > Movie > Play Movie (turbo is fine; keep your hands off the
-- pad after the movie ends). It writes movie_tail.play.txt next to this script and says "done" on
-- the screen when it has the frames; close FCEUX then.
local FROM, AFTER = 24800, 3000
local here = debug.getinfo(1, 'S').source:match('^@(.*/)') or './'
local out = assert(io.open(here .. 'movie_tail.play.txt', 'w'))
emu.registerexit(function() out:close() end)

local BUTTONS = { 'A', 'B', 'select', 'start', 'up', 'down', 'left', 'right' }
local sound, mapper = {}, {}
local function log(list)
  return function(address, size, value)
    if value == nil then return end
    list[#list + 1] = string.format('%04x%02x', address, value % 256)
  end
end
memory.registerwrite(0x8000, 0x8000, log(mapper))
for _, a in ipairs({ 0x2000, 0x2001, 0x2005, 0x2006 }) do memory.registerwrite(a, 1, log(mapper)) end
for a = 0x4000, 0x4017 do
  if a ~= 0x4014 and a ~= 0x4016 then memory.registerwrite(a, 1, log(sound)) end
end

-- The frame number: the movie's while it plays, then counted on from its last.
local frame, lastMovie, done = nil, nil, false
local last
emu.registerafter(function()
  local mode = movie.mode()
  if mode == 'playback' or mode == 'record' then
    frame = movie.framecount()
    lastMovie = frame
  elseif lastMovie then
    frame = frame + 1
  else
    sound, mapper = {}, {}
    return
  end
  if frame < FROM or done then sound, mapper = {}, {}; return end
  if lastMovie and frame > lastMovie + AFTER then done = true; out:flush(); return end
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
  out:write(string.format('f %d %d %d\n', frame, math.floor(mask), emu.lagged() and 1 or 0))
  if #changed > 0 then out:write('r ', table.concat(changed), '\n') end
  if #sound > 0 then out:write('a ', table.concat(sound), '\n') end
  if #mapper > 0 then out:write('m ', table.concat(mapper), '\n') end
  sound, mapper = {}, {}
  if frame % 60 == 0 then out:flush() end
end)

gui.register(function()
  if done then gui.text(8, 8, 'tail: done, close FCEUX')
  elseif frame then gui.text(8, 8, 'tail: frame ' .. frame .. (lastMovie and frame > lastMovie and ' (after the movie)' or '')) end
end)
