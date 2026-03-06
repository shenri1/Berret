#!/usr/bin/env bash

sudo add-dnf-repository universe -y
sudo add-dnf-repository ppa:agornostal/ulauncher -y
sudo dnf update
sudo dnf install ulauncher -y

mkdir -p ~/.config/autostart/
cp ~/.local/share/berret/configs/ulauncher.desktop ~/.config/autostart/ulauncher.desktop
gtk-launch ulauncher.desktop >/dev/null 2>&1
sleep 2
cp ~/.local/share/berret/configs/ulauncher.json ~/.config/ulauncher/settings.json
