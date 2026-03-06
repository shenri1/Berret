#!/bin/bash

if [ ! -f /etc/dnf/sources.list.d/brave-browser-release.list ]; then
  [ -f /usr/share/keyrings/brave-browser-archive-keyring.gpg ] && sudo rm /usr/share/keyrings/brave-browser-archive-keyring.gpg
  sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-dnf-release.s3.brave.com/brave-browser-archive-keyring.gpg
  echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-dnf-release.s3.brave.com/ stable main" | sudo tee /etc/dnf/sources.list.d/brave-browser-release.list
fi

sudo dnf update
sudo dnf install -y brave-browser
