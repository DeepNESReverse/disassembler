// The sixteen areas on the shared maps page. There is no run yet, so the page's run bar is hidden and
// Space, which would start one, does nothing.
import { mountRunPage } from '/src/maps-run/run-page.js';

const AREAS = 16;
const name = (n) => String(n).padStart(2, '0');

window.addEventListener('keydown', (e) => { if (e.code === 'Space') e.stopImmediatePropagation(); }, true);

mountRunPage({
  title: 'Xevious',
  levelWord: 'area',
  levels: Array.from({ length: AREAS }, (_, i) => ({ n: i + 1, label: `Area ${i + 1}` })),
  image: (n) => `/areas/${name(n)}.png`,
  field: { w: 256, h: 224 },
  zoom: 2,
  css: '#tkBar,#live{display:none!important}',
});
