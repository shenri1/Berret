#!/usr/bin/env zsh

sudo -u "$SUDO_USER" zsh -c '
  curl -fsSL https://opencode.ai/install | zsh
  if ! grep -q "opencode/bin" ~/.zshrc 2>/dev/null; then
    echo "export PATH=\"\$HOME/.opencode/bin:\$PATH\"" >> ~/.zshrc
  fi
'
