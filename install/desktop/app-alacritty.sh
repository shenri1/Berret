#!/usr/bin/env bash

dnf install -y alacritty

USER_HOME="/home/$SUDO_USER"
sudo -u "$SUDO_USER" mkdir -p "$USER_HOME/.config/alacritty"

sudo -u "$SUDO_USER" bash -c "
  cp ~/.local/share/berret/config/alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml
  cp ~/.local/share/berret/config/alacritty/shared.toml    ~/.config/alacritty/shared.toml
  cp ~/.local/share/berret/config/alacritty/pane.toml      ~/.config/alacritty/pane.toml
  cp ~/.local/share/berret/config/alacritty/btop.toml      ~/.config/alacritty/btop.toml
  cp ~/.local/share/berret/themes/tokyo-night/alacritty.toml ~/.config/alacritty/theme.toml
  cp ~/.local/share/berret/config/alacritty/fonts/CaskaydiaMono.toml ~/.config/alacritty/font.toml
  cp ~/.local/share/berret/config/alacritty/font-size.toml ~/.config/alacritty/font-size.toml

  alacritty migrate 2>/dev/null || true
  alacritty migrate -c ~/.config/alacritty/pane.toml 2>/dev/null || true
  alacritty migrate -c ~/.config/alacritty/btop.toml 2>/dev/null || true
"
