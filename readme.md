# Interior Vehicle Positions Dev Tool

Makes finding consistent sets of coordinates for large car garages easy.

### How to use

1. Configure coord ranges in `main.lua`
2. Use the `/testvehicles` command to see what the vehicles look like. You can change what vehicle will spawn in `spawn.lua`
3. You can delete vehicles again with `/deletetestvehicles`
4. Use the `/calculatepositions` command to save the coords into a file called `coords.lua`. You will likely need to adjust the file path in `save.lua`
