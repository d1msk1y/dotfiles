#!/bin/bash

# Define the path to your wallpaper directory
WALLPAPER_DIR="/home/d1msk1y/wallpapers/mojave_desert/"

# Define the wallpaper filenames for different time states
MIDNIGHT_WALLPAPER="0midnight.jpg"
LATE_NIGHT_WALLPAPER="1late_night.jpg"
EARLY_MORNING_WALLPAPER="2early_morning.jpg"
DAWN_WALLPAPER="3dawn.jpg"
SUNRISE_WALLPAPER="4sunrise.jpg"
MORNING_WALLPAPER="5morning.jpg"
LATE_MORNING_WALLPAPER="6late_morning.jpg"
FORENOON_WALLPAPER="7forenoon.jpg"
NOON_WALLPAPER="8noon.jpg"
AFTERNOON_WALLPAPER="9afternoon.jpg"
LATE_AFTERNOON_WALLPAPER="10late_afternoon.jpg"
EVENING_WALLPAPER="11evening.jpg"
SUNSET_WALLPAPER="12sunset.jpg"
DUSK_WALLPAPER="13dusk.jpg"
TWILIGHT_WALLPAPER="14twilight.jpg"
NIGHT_WALLPAPER="15night.jpg"

set_wallpaper() {
  monitors=$(xrandr --listmonitors)
  wallpaper="$1"
  
  for monitor in $monitors; do
    nitrogen --set-zoom-fill --head=$monitor "$wallpaper"
  done
}

# Function to determine the current time state and set the wallpaper accordingly
change_wallpaper() {
  current_hour=$(date +%H)
  current_hour=${current_hour#0}  # Remove leading zero if present

  if (( current_hour >= 0 && current_hour < 2 )); then
    set_wallpaper "$WALLPAPER_DIR/$MIDNIGHT_WALLPAPER"
  elif (( current_hour >= 2 && current_hour < 4 )); then
    set_wallpaper "$WALLPAPER_DIR/$LATE_NIGHT_WALLPAPER"
  elif (( current_hour >= 4 && current_hour < 5 )); then
    set_wallpaper "$WALLPAPER_DIR/$EARLY_MORNING_WALLPAPER"
  elif (( current_hour >= 5 && current_hour < 6 )); then
    set_wallpaper "$WALLPAPER_DIR/$DAWN_WALLPAPER"
  elif (( current_hour >= 7 && current_hour < 8 )); then
    set_wallpaper "$WALLPAPER_DIR/$SUNRISE_WALLPAPER"
  elif (( current_hour >= 8 && current_hour < 9 )); then
    set_wallpaper "$WALLPAPER_DIR/$MORNING_WALLPAPER"
  elif (( current_hour >= 9 && current_hour < 10 )); then
    set_wallpaper "$WALLPAPER_DIR/$LATE_MORNING_WALLPAPER"
  elif (( current_hour >= 10 && current_hour < 11)); then
    set_wallpaper "$WALLPAPER_DIR/$FORENOON_WALLPAPER"
  elif (( current_hour >= 12 && current_hour < 14 )); then
    set_wallpaper "$WALLPAPER_DIR/$NOON_WALLPAPER"
  elif (( current_hour >= 14 && current_hour < 16 )); then
    set_wallpaper "$WALLPAPER_DIR/$AFTERNOON_WALLPAPER"
  elif (( current_hour >= 16 && current_hour < 18 )); then
    set_wallpaper "$WALLPAPER_DIR/$LATE_AFTERNOON_WALLPAPER"
  elif (( current_hour >= 18 && current_hour < 20 )); then
    set_wallpaper "$WALLPAPER_DIR/$EVENING_WALLPAPER"
    elif (( current_hour >= 20 && current_hour < 21 )); then
    set_wallpaper "$WALLPAPER_DIR/$SUNSET_WALLPAPER"
  elif (( current_hour >= 21 && current_hour < 22 )); then
    set_wallpaper "$WALLPAPER_DIR/$DUSK_WALLPAPER"
  elif (( current_hour >= 22 && current_hour < 23 )); then
    set_wallpaper "$WALLPAPER_DIR/$TWILIGHT_WALLPAPER"
  elif (( current_hour >= 23 && current_hour < 24 )); then
    set_wallpaper "$WALLPAPER_DIR/$NIGHT_WALLPAPER"
  fi
}

while true; do
  change_wallpaper
  sleep 900
done
