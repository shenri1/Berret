#!/usr/bin/env bash

dnf install -y fastfetch

USER_HOME="/home/$SUDO_USER"
if [[ ! -f "$USER_HOME/.config/fastfetch/config.jsonc" ]]; then
  sudo -u "$SUDO_USER" mkdir -p "$USER_HOME/.config/fastfetch"
  cp "$USER_HOME/.local/share/berret/config/fastfetch/config.jsonc" "$USER_HOME/.config/fastfetch/config.jsonc"
  chown "$SUDO_USER:$SUDO_USER" "$USER_HOME/.config/fastfetch/config.jsonc"
fi
