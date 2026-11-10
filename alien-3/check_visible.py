#!/usr/bin/env python3
import json

with open('out/levels/visible.json', 'r') as f:
    data = json.load(f)

for level in sorted(data.keys(), key=lambda x: int(x)):
    level_data = data[level]
    print(f'Уровень {level}:')
    print(f'  places={level_data["places"]}')
    print(f'  runTiles={level_data["runTiles"]}')
    print(f'  searchOnly={level_data["searchOnly"]}')
    print(f'  total={level_data["total"]}')
    print(f'  видимость: {level_data["total"]}/{level_data["tiles"]} ({100*level_data["total"]/level_data["tiles"]:.1f}%)')
    print()
