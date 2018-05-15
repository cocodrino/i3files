#!/bin/bash
#wallpaper=~/dotfiles/wallpapers/wallpaper.png
cd /home/yo/Imágenes/wall

feh --bg-scale $(ls -t *.jpg | head -1)
echo "set background ok"
