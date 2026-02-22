#!/usr/bin/env bash
set -e

# Detect the real user
if [ -n "$SUDO_USER" ]; then
    USERNAME="$SUDO_USER"
else
    USERNAME="$USER"
fi

echo "Installing Homebrew as $USERNAME..."

# Install Homebrew as the real user
sudo -u "$USERNAME" bash -c \
"$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Load brew environment
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"' >> "/home/$USERNAME/.bashrc"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"

# Install packages
sudo -u "$USERNAME" /home/linuxbrew/.linuxbrew/bin/brew install jesseduffield/lazydocker/lazydocker
sudo -u "$USERNAME" /home/linuxbrew/.linuxbrew/bin/brew install anomalyco/tap/opencode

echo "Homebrew setup complete!"
