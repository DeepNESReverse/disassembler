"""The maps chapter's preview (xrom.dev): src/preview.ts's frames of the run laid over the cave in a
window the cave's width that follows the camera down, the items not yet taken and the way still ahead
drawn as on the page — an MP4 and its poster. After ~/circus-charlie-levels' src/preview.py; the
window is 448 × 254 (Alien 3's 480 × 272 shape).
python3 src/preview.py <frames.bin> <step> <out.mp4> <first frame>"""
import json, struct, subprocess, sys, gzip
from PIL import Image, ImageDraw

src, step, out, first = sys.argv[1], int(sys.argv[2]), sys.argv[3], int(sys.argv[4])
W = 448
H = round(W * 272 / 480)
cave = Image.open('out/cave/cave.png').convert('RGB')
trail = json.load(open('out/cave/tas.json'))['levels']['1']['segments']
items = json.load(open('out/cave/items.json'))
rom = open(__import__('os').path.expanduser('~/spelunker-tas/Spelunker (Japan).nes'), 'rb').read()
chr_ = rom[16 + 0x8000:16 + 0xA000]
# The NES colours, the same table the page uses.
NES = json.loads(subprocess.check_output(['node', '--experimental-strip-types', '--no-warnings', '--input-type=module', '-e',
    "import { NES_RGB } from '/Users/alex.m/xrom-libs/nes/src/palette.ts'; console.log(JSON.stringify(NES_RGB))"]))

# When each item is taken: its flag going 255 → 0 in the packed run.
d = gzip.open('out/cave/take.bin.gz').read()
n, size = struct.unpack('<I', d[4:8])[0], struct.unpack('<H', d[8:10])[0]
s, o, armed, taken = bytearray(size), 10, set(), {}
for f in range(n):
    c = struct.unpack('<H', d[o:o + 2])[0]; o += 2
    for _ in range(c):
        s[struct.unpack('<H', d[o:o + 2])[0]] = d[o + 2]; o += 3
    o += 2 + 2 * struct.unpack('<H', d[o:o + 2])[0]
    for it in items['items']:
        v = s[2352 + it['i']]
        if v == 255: armed.add(it['i'])
        elif v == 0 and it['i'] in armed and it['i'] not in taken: taken[it['i']] = f


def item_layer(f):
    im = Image.new('RGBA', cave.size)
    for it in items['items']:
        if taken.get(it['i'], 1 << 30) <= f: continue
        for dx, dy, tile, attr in items['looks'][str(it['type'])]:
            base = items['spriteTable'] + tile * 16
            for r in range(8):
                rr = 7 - r if attr & 0x80 else r
                for j in range(8):
                    bit = j if attr & 0x40 else 7 - j
                    v = ((chr_[base + rr] >> bit) & 1) | (((chr_[base + rr + 8] >> bit) & 1) << 1)
                    x, y = it['x'] + dx + j, it['y'] + dy + r
                    if v and 0 <= x < cave.width and 0 <= y < cave.height:
                        col = NES[items['palette'][(attr & 3) * 4 + v] & 0x3F]
                        im.putpixel((x, y), (col >> 16 & 255, col >> 8 & 255, col & 255, 255))
    return im


data = open(src, 'rb').read()
fs = 4 + 256 * 240 * 3
frames, vy, layer, layerKey = [], None, None, None
for i in range(len(data) // fs):
    cx, cy = struct.unpack_from('<hh', data, i * fs)
    live = Image.frombytes('RGB', (256, 240), data[i * fs + 4:(i + 1) * fs])
    mask = Image.frombytes('RGB', (256, 240), data[i * fs + 4:(i + 1) * fs]).point(lambda v: 0 if v in (1, 2, 3) else 255).convert('L')
    f = first + i * step
    key = tuple(sorted(k for k, t in taken.items() if t <= f))
    if key != layerKey: layer, layerKey = item_layer(f), key
    ty = min(max(cy + 120 - H / 2, 0), cave.height - H)
    vy = ty if vy is None else vy + (ty - vy) * 0.25
    y0 = round(vy)
    im = cave.crop((0, y0, W, y0 + H))
    im.paste(layer.crop((0, y0, W, y0 + H)), (0, 0), layer.crop((0, y0, W, y0 + H)))
    im.paste(live, (cx, cy - y0), mask)
    dr = ImageDraw.Draw(im)
    for sg in trail:
        pts = [(p[0], p[1] - y0) for p in sg if p[2] >= f]
        if len(pts) > 1: dr.line(pts, fill=(196, 160, 255), width=2)
    dr.rectangle((cx, cy - y0, cx + 255, cy - y0 + 239), outline=(255, 255, 255))
    frames.append(im)
enc = subprocess.Popen(['ffmpeg', '-y', '-loglevel', 'error', '-f', 'rawvideo', '-pix_fmt', 'rgb24', '-s', f'{W * 2}x{H * 2}',
                        '-r', str(60 / step), '-i', '-', '-c:v', 'libx264', '-preset', 'slow', '-crf', '26', '-pix_fmt', 'yuv420p',
                        '-movflags', '+faststart', '-an', out], stdin=subprocess.PIPE)
for im in frames: enc.stdin.write(im.resize((W * 2, H * 2), Image.NEAREST).tobytes())
enc.stdin.close(); enc.wait()
frames[len(frames) // 4].resize((W * 2, H * 2), Image.NEAREST).save(out[:-4] + '.png', optimize=True)
print(len(frames), 'frames →', out, f'{W * 2}x{H * 2}')
