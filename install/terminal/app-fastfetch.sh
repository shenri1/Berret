#!/usr/bin/env bash

sudo dnf install -y fastfetch

if [ ! -f "$HOME/.config/fastfetch/config.jsonc" ]; then
  mkdir -p ~/.config/fastfetch
  cp ~/.local/share/berret/configs/fastfetch.jsonc ~/.config/fastfetch/config.jsonc
fi
