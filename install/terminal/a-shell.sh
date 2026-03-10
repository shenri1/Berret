#!/usr/bin/env bash

USER_HOME="/home/$SUDO_USER"

[ -f "$USER_HOME/.bashrc" ] && mv "$USER_HOME/.bashrc" "$USER_HOME/.bashrc.bak"

if ! grep -q "source $USER_HOME/.local/share/berret/default/bash/rc" "$USER_HOME/.bashrc" 2>/dev/null; then
  echo "source $USER_HOME/.local/share/berret/default/bash/rc" >> "$USER_HOME/.bashrc"
fi

source "$BASE_DIR/default/bash/shell"

[ -f "$USER_HOME/.inputrc" ] && mv "$USER_HOME/.inputrc" "$USER_HOME/.inputrc.bak"
cp "$BASE_DIR/default/bash/inputrc" "$USER_HOME/.inputrc"
chown "$SUDO_USER:$SUDO_USER" "$USER_HOME/.inputrc"
