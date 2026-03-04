#!/usr/bin/env bash

dnf install -y btop

USER_HOME="/home/$SUDO_USER"
sudo -u "$SUDO_USER" mkdir -p "$USER_HOME/.config/btop/themes"
cp "$USER_HOME/.local/share/berret/config/btop/btop.conf" "$USER_HOME/.config/btop/btop.conf"
chown -R "$SUDO_USER:$SUDO_USER" "$USER_HOME/.config/btop"
