# Arch Linux Hyprland Plug‑and‑Play Configuration

This document lists required environment tweaks, setup commands, and installed packages used for a fully functional Hyprland Wayland setup.

---

## Environment Configuration

### Firefox (Wayland Support)

Enable native Wayland support:

```bash
MOZ_ENABLE_WAYLAND=1
```

---

## Wallpaper Script Requirement

Create a symlink so wallpaper scripts can reference the current wallpaper consistently:

```bash
ln -sf ~/Pictures/Wallpapers/your_wallpaper.jpg ~/.config/sway/current_wallpaper
```

---

## Installed Packages

```
adw-bluetooth 1.0.0-1
ani-cli 4.10-1
base 3-3
base-devel 1-2
bash-completion 2.17.0-3
bluez 5.86-2
bluez-utils 5.86-2
brave-bin 1:1.87.190-1
brightnessctl 0.5.1-3
btop 1.4.6-1
btrfs-progs 6.19-1
catppuccin-gtk-theme-mocha 1.0.3-1
cliphist 1:0.7.0-2
dnsmasq 2.92-1
dosfstools 4.2-5
efibootmgr 18-3
exfatprogs 1.3.1-1
fastfetch 2.59.0-1
ffmpegthumbnailer 2.3.0-1
fontconfig 2:2.17.1-1
foot 1.25.0-1
fzf 0.68.0-1
git 2.53.0-1
gnome-keyring 1:48.0-1
grim 1.5.0-2
gst-plugin-pipewire 1:1.4.10-2
gvfs 1.58.1-1
hostapd 2.11-4
hyprland 0.53.3-2
hyprland-guiutils 0.2.1-2
imagemagick 7.1.2.13-2
imv 5.0.1-1
intel-media-driver 25.3.4-2
intel-ucode 20260210-1
iwd 3.11-2
less 1:692-1
libnotify 0.8.8-1
libpulse 17.0+r98+gb096704c0-1
linux 6.18.9.arch1-2
linux-firmware 20260110-1
mako 1.10.0-1
man-db 2.13.1-1
mpv 1:0.41.0-3
nano 8.7.1-1
ncdu 2.9.2-1
networkmanager 1.54.3-1
nmrs 1.1.0-2
pamixer 1.6-3
pipewire 1:1.4.10-2
pipewire-alsa 1:1.4.10-2
pipewire-pipewire-jack 1:1.4.10-2
pipewire-pulse 1:1.4.10-2
playerctl 2.4.1-5
polkit-gnome 0.105-12
power-profiles-daemon 0.30-1
python-gobject 3.54.5-2
rofi 2.0.0-1
slurp 1.5.0-1
sof-firmware 2025.12.2-1
swaybg 1.2.1-1
thunar 4.20.7-1
ttf-jetbrains-mono-nerd 3.4.0-2
ttf-liberation 2.1.5-2
tumbler 4.20.1-1
usbutils 019-1
waybar 0.15.0-1
wireless-regdb 2026.02.04-1
wireplumber 0.5.13-1
wl-clipboard 1:2.2.1-3
xdg-desktop-portal-gtk 1.15.3-1
xdg-desktop-portal-hyprland 1.3.11-3
yay 12.5.7-2
zed 0.224.11-1
zram-generator 1.2.1-1
```

---

## Notes

* Designed for a minimal Wayland-first workflow.
* PipeWire is used for audio handling.
* Hyprland acts as the primary compositor.
* GTK theming uses Catppuccin Mocha.
