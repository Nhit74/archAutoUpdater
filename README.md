# archAutoUpdater

An Arch Linux automatic update script. 

## Why I made it:

This is an update script for Arch. I made it only for personal use and learning pruposes but I'm sharing it here for everyone who wants to use it. This script isn't perfect and there are lots of other solutions for the automatic update of Arch.

## How to use it:

Give it exec permitions and exec it manualy.

```bash
  chmod +x update.sh
  ./update.sh
 ```
 Maiby you want to execute it automaticly. The metod depends on your desktop enviroment. In my case hyprland.
```bash
  chmod +x update.sh
  cp --mkdir update.sh $HOME/.config/hypr/scripts
```
Then in your hyprland.lua hyprland.autostart add the next order.
```lua
 hl.exec_cmd("bash $HOME/.config/hypr/scripts/update.sh")
 ```