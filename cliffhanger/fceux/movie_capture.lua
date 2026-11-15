-- Everything a movie (a TAS, a recorded run) does, as FCEUX plays it — for any game, in one pass:
--   f <frame> <buttons> <lagged>   the pad the movie gave (bit 0 A … bit 7 right), 1 if lagged
--   r <aaaavv…>                    the RAM bytes that changed since the frame before
--                                  (4 hex digits of address, 2 of value; the first frame: all 2 KB)
--   a <aaaavv…>                    the sound chip's register writes this frame, in order
--                                  ($4000-$4017 but $4014 and $4016: address, value)
--   m <aaaavv…>                    the mapper's and the PPU control writes this frame, in order:
--                                  $8000-$FFFF (MMC3 banks, mirroring, the scanline IRQ) and
--                                  $2000, $2001, $2005, $2006 (the CPU address the game wrote to)
-- The f/r lines are record_play.lua's take (xrom-libs/nes/fceux): replayable headless, the RAM
-- laid over; the a lines are the music and the sound effects, to play through @xromdev/apu.
--
-- Unlike record_play.lua it does not power the console on: the movie does. Start this script
-- first, then File > Movie > Play Movie. Turbo is fine: every frame is written. It writes to
-- movie_capture.play.txt next to this script; close FCEUX when the movie has ended.
--
-- If FCEUX dies half way (it did at 3200 % with sound on: "Illegal instruction: 4"), run it again
-- the same way: when movie_capture.play.txt is there, the frames it holds are skipped and the
-- rest goes to movie_capture.part<N>.play.txt, its first frame with the whole RAM again; the
-- parts are joined afterwards. A new movie: move the old files away first. Turn the sound off
-- (Config > Sound) for a fast pass: the writes are caught here, not heard.
local here = debug.getinfo(1, 'S').source:match('^@(.*/)') or './'
local base = here .. 'movie_capture'

-- The last frame a part holds (its last "f" line; the lines after it may have been cut).
local function lastFrame(path)
  local fh = io.open(path, 'r')
  if not fh then return nil end
  local last
  for line in fh:lines() do
    local f = line:match('^f (%d+) ')
    if f then last = tonumber(f) end
  end
  fh:close()
  return last
end

-- Frames below `skip` are in the earlier parts already; the last one is written again, whole.
local skip, path = 0, base .. '.play.txt'
local done = lastFrame(path)
if done then
  local n = 2
  while true do
    local part = string.format('%s.part%d.play.txt', base, n)
    local more = lastFrame(part)
    if not more then path = part; break end
    done = more
    n = n + 1
  end
  skip = done - 1
end
local out = assert(io.open(path, 'w'))
emu.registerexit(function() out:close() end)

local BUTTONS = { 'A', 'B', 'select', 'start', 'up', 'down', 'left', 'right' }
local sound = {}
local mapper = {}

-- The sound chip's registers: a write hook on each (the value comes as the hook's third argument
-- in FCEUX 2.2.3 and later).
local function onApu(address, size, value)
  if movie.mode() ~= 'playback' then return end
  if value == nil then return end
  sound[#sound + 1] = string.format('%04x%02x', address, value % 256)
end
-- The mapper and the PPU control registers: the banks the sprites and the field are drawn with,
-- and the scroll, whether or not the game keeps a copy of them in RAM.
local function onMapper(address, size, value)
  if movie.mode() ~= 'playback' then return end
  if value == nil then return end
  mapper[#mapper + 1] = string.format('%04x%02x', address, value % 256)
end
memory.registerwrite(0x8000, 0x8000, onMapper)
for _, a in ipairs({ 0x2000, 0x2001, 0x2005, 0x2006 }) do
  memory.registerwrite(a, 1, onMapper)
end
for a = 0x4000, 0x4017 do
  if a ~= 0x4014 and a ~= 0x4016 then memory.registerwrite(a, 1, onApu) end
end

local last, lastWritten = nil, -1
emu.registerafter(function()
  if movie.mode() ~= 'playback' then sound = {}; mapper = {}; return end
  local f = movie.framecount()
  if f == lastWritten then return end
  if f < skip then sound = {}; mapper = {}; return end
  lastWritten = f
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
  if #mapper > 0 then out:write('m ', table.concat(mapper), '\n') end
  sound = {}
  mapper = {}
  if f % 60 == 0 then out:flush() end
end)

gui.register(function()
  if movie.mode() ~= 'playback' then return end
  local f = movie.framecount()
  if f < skip then gui.text(8, 8, 'capture: skipping to ' .. skip .. ' (' .. f .. ')')
  else gui.text(8, 8, 'capture: frame ' .. f .. (skip > 0 and ' (part)' or '')) end
end)
