#!/bin/bash

DOTFILES="$HOME/dotfiles"

echo "Installing dotfiles..."

# create directories
mkdir -p ~/.config
mkdir -p ~/.local/bin

# copy configs
cp -r "$DOTFILES/.config/hypr" ~/.config/
cp -r "$DOTFILES/.config/waybar" ~/.config/
cp -r "$DOTFILES/.config/kitty" ~/.config/
cp -r "$DOTFILES/.config/wofi" ~/.config/
cp -r "$DOTFILES/.config/wlogout" ~/.config/
cp -r "$DOTFILES/.config/fastfetch" ~/.config/
cp -r "$DOTFILES/.config/cava" ~/.config/
cp -r "$DOTFILES/.config/waypaper" ~/.config/
cp -r "$DOTFILES/.config/mako" ~/.config/
cp "$DOTFILES/.config/starship.toml" ~/.config/
cp "$DOTFILES/.config/libinput-gestures.conf" ~/.config/

# copy scripts
cp "$DOTFILES/scripts/setwall" ~/.local/bin/
cp "$DOTFILES/scripts/setwallmenu" ~/.local/bin/
cp "$DOTFILES/scripts/powermenu" ~/.local/bin/
cp "$DOTFILES/scripts/screenrecord" ~/.local/bin/ 2>/dev/null
cp "$DOTFILES/scripts/displayswitch" ~/.local/bin/ 2>/dev/null
chmod +x ~/.local/bin/*

# copy zshrc
cp "$DOTFILES/.zshrc" ~/

echo "Done! Reload hyprland with: hyprctl reload"
