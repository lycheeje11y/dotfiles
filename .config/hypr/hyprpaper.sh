for monitor in $(hyprctl monitors | grep 'Monitor' | awk '{ print $2 }'); do
	hyprctl hyprpaper preload "~/.config/wallpapers/cafe.jpg"
	hyprctl hyprpaper wallpaper "$monitor,~/.config/wallpapers/cafe.jpg"
done
