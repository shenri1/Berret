#!/usr/bin/env bash

sudo -u "$SUDO_USER" bash -c '
  curl -fsSL https://bun.sh/install | bash

  if ! grep -q "bun/bin" ~/.bashrc; then
    echo "export PATH=\"\$HOME/.bun/bin:\$PATH\"" >> ~/.bashrc
  fi
'
