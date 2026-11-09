// The sixteen areas on the shared maps page. There is no run yet, so the page's run bar is hidden and
// Space, which would start one, does nothing.
import { mountRunPage } from '../maps-run/run-page.js';

const AREAS = 16;
const name = (n) => String(n).padStart(2, '0');
// The public page keeps the maps beside itself (src/public.ts).
const DIR = window.PUBLIC_MAPS ? '' : '/areas/';

window.addEventListener('keydown', (e) => { if (e.code === 'Space') e.stopImmediatePropagation(); }, true);

mountRunPage({
  title: 'Xevious',
  levelWord: 'area',
  levels: Array.from({ length: AREAS }, (_, i) => ({ n: i + 1, label: `Area ${i + 1}` })),
  image: (n) => `${DIR}${name(n)}.png`,
  field: { w: 256, h: 224 },
  zoom: 2,
  css: '#tkBar,#live{display:none!important}',
});
