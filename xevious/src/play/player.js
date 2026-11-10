// The whole flight as one map on the shared maps page, area 1 at the bottom and area 16 at the top. There is
// no run, so the page's run bar is hidden and Space, which would start one, does nothing.
import { mountRunPage } from '../maps-run/run-page.js';

const AREAS = 16, TALL = 2080, FIRST = 2272, HEIGHT = FIRST + (AREAS - 1) * TALL;
// The public page keeps the map beside itself (src/public.ts).
const DIR = window.PUBLIC_MAPS ? '' : '/areas/';

window.addEventListener('keydown', (e) => { if (e.code === 'Space') e.stopImmediatePropagation(); }, true);

/** Where an area lies on the map, as percentages of its height, so that the marks follow every zoom. */
const areaMark = (n) => {
  const top = (AREAS - n) * TALL, height = n === 1 ? FIRST : TALL;
  return `<div class="area area${n % 2}" style="top:${(top / HEIGHT) * 100}%;height:${(height / HEIGHT) * 100}%"><b>${n}</b><b class="low">${n}</b></div>`;
};

mountRunPage({
  title: 'Xevious',
  levelWord: 'area',
  levels: [{ n: 1, label: 'The map' }],
  image: () => `${DIR}whole.png`,
  field: { w: 256, h: 224 },
  zoom: 2,
  headerHtml: '<label style="display:flex;gap:6px;align-items:center;cursor:pointer" title="Mark where each of the sixteen areas lies"><input type="checkbox" id="showAreas"> Highlight areas</label>',
  layersAbove: `<div id="areas" hidden>${Array.from({ length: AREAS }, (_, i) => areaMark(i + 1)).join('')}</div>`,
  css: `#tkBar,#live{display:none!important}
#areas{position:absolute;inset:0;pointer-events:none}#areas[hidden]{display:none}
.area{position:absolute;left:0;right:0;box-sizing:border-box;border:3px solid}
.area0{background:#35d6e844;border-color:#35d6e8}.area1{background:#ff8fb144;border-color:#ff8fb1}
.area b{position:absolute;left:8px;top:8px;background:#000c;color:#fff;font:700 22px/1 ui-monospace,monospace;padding:6px 10px;border-radius:4px}
.area b.low{top:auto;bottom:8px}`,
});

document.getElementById('showAreas').onchange = (e) => { document.getElementById('areas').hidden = !e.target.checked; };

// The flight starts at the bottom of the map.
const wrap = document.getElementById('wrap'), map = document.getElementById('iLevel');
const toStart = () => requestAnimationFrame(() => { wrap.scrollTop = wrap.scrollHeight; });
if (map.complete && map.naturalHeight) toStart();
else map.addEventListener('load', toStart, { once: true });
