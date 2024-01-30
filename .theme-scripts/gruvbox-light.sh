echo "gruvbox-light" > '/home/dmytro/polybar-collection/theme.sh'
cat "/home/dmytro/.config/kitty/themes/Gruvbox Material Light Medium.conf" > '/home/dmytro/.config/kitty/current-theme.conf'
export GTK_THEME="Gruvbox-Light-BL"

echo '@theme "/usr/share/rofi/themes/gruvbox-light-hard.rasi"' > "/home/dmytro/.config/rofi/config.rasi"

set_wallpaper() {
  monitors=$(xrandr --listmonitors)
  wallpaper="$1"
  
  for monitor in $monitors; do
    nitrogen --set-zoom-fill --head=$monitor "/home/dmytro/documents/wallpapers/Gruvbox/light/cyber-girl-light.png"
  done
}

i3-msg restart

set_wallpaper