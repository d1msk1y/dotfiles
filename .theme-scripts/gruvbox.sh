echo "gruvbox" > '/home/dmytro/polybar-collection/theme.sh'
cat '/home/dmytro/.config/kitty/themes/Gruvbox Dark Soft.conf' > '/home/dmytro/.config/kitty/current-theme.conf'
export GTK_THEME="Grubvox-Dark-BL"

echo '@theme "/usr/share/rofi/themes/gruvbox-dark-soft.rasi"' > "/home/dmytro/.config/rofi/config.rasi"

set_wallpaper() {
  monitors=$(xrandr --listmonitors)
  wallpaper="$1"
  
  for monitor in $monitors; do
    nitrogen --set-zoom-fill --head=$monitor "/home/dmytro/documents/wallpapers/Gruvbox/minimalistic/ALLqk82.png"
  done
}

i3-msg restart

set_wallpaper