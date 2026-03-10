#!/usr/bin/env bash

sudo -u "$SUDO_USER" bash -c '
  curl -fsSL https://bun.sh/install | bash

  if ! grep -q "bun/bin" ~/.zshrc 2>/dev/null; then
    echo "export PATH=\"\$HOME/.bun/bin:\$PATH\"" >> ~/.zshrc
  fi
'
