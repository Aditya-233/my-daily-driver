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
ani-cli-git r781.4dbb799-1
base 3-3
base-devel 1-2
bash-completion 2.17.0-3
bluetui 0.8.1-1
bluez 5.86-4
bluez-utils 5.86-4
brightnessctl 0.5.1-3
cliphist 1:0.7.0-2
dhcpcd 10.3.0-1
efibootmgr 18-3
fastfetch 2.59.0-1
firefox 148.0-1
foot 1.26.0-1
git 2.53.0-1
grim 1.5.0-2
gst-plugin-pipewire 1:1.4.10-2
gvfs 1.58.2-1
htop 3.4.1-1
hyprland 0.54.1-1
impala 0.7.4-1
imv 5.0.1-1
intel-media-driver 25.4.6-1
intel-ucode 20260227-1
iwd 3.11-2
libpulse 17.0+r98+gb096704c0-1
linux 6.18.13.arch1-1
linux-firmware 20260221-1
mako 1.10.0-1
mpv 1:0.41.0-3
nano 8.7.1-1
pipewire 1:1.4.10-2
pipewire-alsa 1:1.4.10-2
pipewire-jack 1:1.4.10-2
pipewire-pulse 1:1.4.10-2
polkit-gnome 0.105-12
power-profiles-daemon 0.30-1
python-gobject 3.54.5-2
rofi 2.0.0-1
slurp 1.5.0-1
sof-firmware 2025.12.2-1
sudo 1.9.17.p2-2
swaybg 1.2.2-1
thunar 4.20.7-1
ttf-jetbrains-mono-nerd 3.4.0-2
waybar 0.15.0-2
wireplumber 0.5.13-1
wpa_supplicant 2:2.11-5
xdg-utils 1.2.1-2
yay-bin 12.5.7-1
zed 0.225.13-1
zram-generator 1.2.1-1
```

---

## Notes

* Designed for a minimal Wayland-first workflow.
* PipeWire is used for audio handling.
* Hyprland acts as the primary compositor.
* GTK theming uses Catppuccin Mocha.
