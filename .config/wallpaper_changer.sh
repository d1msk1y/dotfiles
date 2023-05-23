#!/bin/bash

WALLPAPER_DIR="/home/d1msk1y/wallpapers/mojave_desert/"

declare -A WALLPAPERS=(
  [0]="0midnight.jpg"
  [1]="1late_night.jpg"
  [2]="2early_morning.jpg"
  [3]="3dawn.jpg"
  [4]="4sunrise.jpg"
  [5]="5morning.jpg"
  [6]="6late_morning.jpg"
  [7]="7forenoon.jpg"
  [8]="8noon.jpg"
  [9]="9afternoon.jpg"
  [10]="10late_afternoon.jpg"
  [11]="11evening.jpg"
  [12]="12sunset.jpg"
  [13]="13dusk.jpg"
  [14]="14twilight.jpg"
  [15]="15night.jpg"
)

set_wallpaper() {
  monitors=$(xrandr --listmonitors)
  wallpaper="$1"
  
  for monitor in $monitors; do
    nitrogen --set-zoom-fill --head=$monitor "$wallpaper"
  done
}

change_wallpaper() {
  current_hour=$(date +%H)
  time_state=$(( current_hour / 2 ))

  wallpaper="${WALLPAPER_DIR}/${WALLPAPERS[$time_state]}"
  set_wallpaper "$wallpaper"
}

while true; do
  change_wallpaper
  sleep 900
done
