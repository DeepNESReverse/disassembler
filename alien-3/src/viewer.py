"""out/levels/index.html: every level's picture and its check (no-clip run preferred), numbers inline.
python3 src/viewer.py"""
import json, os
D = 'out/levels'
checks = {}
for n in range(1, 13):
    for kind in ('noclip', 'check'):
        f = f'{D}/{n:02d}-{kind}.json'
        if os.path.exists(f):
            s = json.load(open(f))
            s['image'] = f'{n:02d}-{kind}.png'
            s['kind'] = 'no-clip по всей раскладке' if kind == 'noclip' else 'игра + телепорты'
            checks[n] = s
            break
opts = ''.join(f'<option value="{n}">Уровень {n}{" — босс" if n % 3 == 0 else ""}{" ✓" if n in checks else ""}</option>' for n in range(1, 13))
html = '''<!doctype html><html lang="ru"><head><meta charset="utf-8"><title>Alien 3 — уровни</title>
<style>
:root{color-scheme:dark}body{margin:0;background:#111;color:#ddd;font:14px system-ui,sans-serif}
header{position:sticky;top:0;background:#1b1b1b;padding:8px 12px;display:flex;gap:10px;align-items:center;flex-wrap:wrap;z-index:2;border-bottom:1px solid #333}
button,select{background:#2a2a2a;color:#ddd;border:1px solid #444;border-radius:4px;padding:4px 10px;cursor:pointer;font:inherit}button.on{background:#3d5a80;border-color:#5b7fb0}button:disabled{opacity:.4}
#wrap{overflow:auto;height:calc(100vh - 50px)}#stage{position:relative}
#stage img{display:block;image-rendering:pixelated;position:absolute;left:0;top:0}
#pos{font-variant-numeric:tabular-nums;color:#aaa}
details{padding:0 12px}table{border-collapse:collapse;margin:8px 0}td{padding:2px 10px;border-bottom:1px solid #2a2a2a}td:last-child{text-align:right;font-variant-numeric:tabular-nums}
.legend{color:#888}
</style></head><body>
<header>
<select id="lvl">__OPTS__</select>
<button id="bLevel" class="on">Карта</button><button id="bCheck">Проверка</button><button id="bBlend">Наложение</button>
<span>Масштаб:</span><button data-z="0.25">¼</button><button data-z="0.5">½</button><button data-z="1" class="on">1×</button><button data-z="2">2×</button>
<span id="pos"></span>
<span class="legend">проверка: тёмное — игра ни разу не показала, оранжевое — устаревшая клетка, красное — расхождение</span>
</header>
<details><summary>Цифры проверки</summary><table id="nums"></table></details>
<div id="wrap"><div id="stage"><img id="iLevel" src="01.png"><img id="iCheck" style="display:none"></div></div>
<script>
const CHECKS=__CHECKS__;let S=null;
function nums(){const t=document.getElementById('nums');if(!S){t.innerHTML='<tr><td>Не проверен по кадрам</td><td></td></tr>';return}
const f=v=>typeof v==='number'?v.toLocaleString('ru'):v;
const rows=[["прогон",S.kind],["кадров",S.frames],["сравнений",S.samples],["совпадение, %",S.matchPercent],["без устаревших, %",S.matchPercentStaleApart],["записей тайлов: совпало / всего",f(S.writesMatched)+" / "+f(S.writesChecked)],["записей атрибутов",f(S.attributeWritesMatched)+" / "+f(S.attributeWritesChecked)],["клеток увидено",f(S.cellsSeen)+" / "+f(S.cellsOfLevel)],["клеток с расхождением",S.cellsEverDiffered]];
if(S.noclip)rows.push(["камера прошла X",S.noclip.camera.minX+".."+S.noclip.camera.maxX],["камера прошла Y",S.noclip.camera.minY+".."+S.noclip.camera.maxY]);
t.innerHTML=rows.map(r=>`<tr><td>${r[0]}</td><td>${f(r[1])}</td></tr>`).join('')}
const L=iLevel,C=iCheck,st=stage;let z=1,m='l';
function mode(x){m=x;[bLevel,bCheck,bBlend].forEach(b=>b.classList.remove('on'));
 L.style.display=x==='c'?'none':'';C.style.display=x==='l'?'none':'';C.style.opacity=x==='b'?.5:1;
 ({l:bLevel,c:bCheck,b:bBlend})[x].classList.add('on')}
bLevel.onclick=()=>mode('l');bCheck.onclick=()=>mode('c');bBlend.onclick=()=>mode('b');
function size(){st.style.width=L.naturalWidth*z+'px';st.style.height=L.naturalHeight*z+'px';[L,C].forEach(i=>i.style.width=L.naturalWidth*z+'px')}
L.onload=size;document.querySelectorAll('[data-z]').forEach(b=>b.onclick=()=>{z=+b.dataset.z;document.querySelectorAll('[data-z]').forEach(x=>x.classList.toggle('on',x===b));size()});
function pick(n){const nn=String(n).padStart(2,'0');S=CHECKS[n]||null;L.src=nn+'.png';bCheck.disabled=bBlend.disabled=!S;if(S)C.src=S.image;else mode('l');nums();document.title='Alien 3 — уровень '+n}
lvl.onchange=()=>pick(+lvl.value);pick(1);
st.onmousemove=e=>{const r=st.getBoundingClientRect(),x=Math.floor((e.clientX-r.left)/z),y=Math.floor((e.clientY-r.top)/z);
 const page=Math.floor(y/240),ty=Math.floor(y/8),inPage=Math.floor((ty%30)/4);
 pos.textContent=`x ${x} y ${y} · тайл ${x>>3},${ty} · блок ${x>>5}, ряд раскладки ${page*8+inPage} (стр. ${page})`};
</script></body></html>'''
open(f'{D}/index.html', 'w').write(html.replace('__OPTS__', opts).replace('__CHECKS__', json.dumps(checks)))
print('ok', sorted(checks))
