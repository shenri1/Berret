#!/usr/bin/env bash

#This script is used to install Homebrew on Fedora.

sudo -u $SUDO_USER -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

sudo -u $SUDO_USER brew install jesseduffield/lazydocker/lazydocker
sudo -u $SUDO_USER brew install anomalyco/tap/opencode
