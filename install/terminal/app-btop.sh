#!/usr/bin/env bash

sudo dnf install -y btop

mkdir -p ~/.config/btop/themes
cp ~/.local/share/berret/config/btop.conf ~/.config/btop/btop.conf
cp ~/.local/share/berret/themes/tokyo-night/btop.theme ~/.config/btop/themes/tokyo-night.theme
