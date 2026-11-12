// The whole flight as one map on the shared maps page, the start at the bottom and the last before the loop at
// the top. There is no run on it, so the page's run bar is hidden and Space, which would start one, does nothing.
import { mountRunPage } from '../maps-run/run-page.js';

// The public page keeps the map beside itself (src/public.ts).
const DIR = window.PUBLIC_MAPS ? '' : '/out/';

window.addEventListener('keydown', (e) => { if (e.code === 'Space') e.stopImmediatePropagation(); }, true);

mountRunPage({
  title: 'Gyrodine',
  levelWord: 'map',
  levels: [{ n: 1, label: 'The whole flight' }],
  image: () => `${DIR}whole.png`,
  field: { w: 256, h: 224 },
  zoom: 2,
  css: '#tkBar,#live{display:none!important}',
});

// The flight starts at the bottom of the map.
const wrap = document.getElementById('wrap'), map = document.getElementById('iLevel');
const toStart = () => requestAnimationFrame(() => { wrap.scrollTop = wrap.scrollHeight; });
if (map.complete && map.naturalHeight) toStart();
else map.addEventListener('load', toStart, { once: true });
