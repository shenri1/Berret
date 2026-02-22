USER_HOME="/home/$SUDO_USER"

sudo -u $SUDO_USER mkdir -p "$USER_HOME/.local/share/applications"
sudo -u $SUDO_USER mkdir -p "$USER_HOME/.config"

cp -R "$BASE_DIR/config/"* "$USER_HOME/.config/" 2>/dev/null || true
chown -R $SUDO_USER:$SUDO_USER "$USER_HOME/.config"

# Ensure application directory exists for update-desktop-database
mkdir -p ~/.local/share/applications

# Use default bashrc from Berret
echo "source $USER_HOME/.local/share/berret/default/bash/rc" >> "$USER_HOME/.bashrc"

# Set common git config
git config --global init.defaultBranch main
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global pull.rebase true

# Set identification from install inputs
if [[ -n "${BERRET_USER_NAME//[[:space:]]/}" ]]; then
  git config --global user.name "$BERRET_USER_NAME"
fi

if [[ -n "${BERRET_USER_EMAIL//[[:space:]]/}" ]]; then
  git config --global user.email "$BERRET_USER_EMAIL"
fi

# Set default XCompose that is triggered with CapsLock
tee ~/.XCompose >/dev/null <<EOF
include "%H/.local/share/berret/default/xcompose"

# Identification
<Multi_key> <space> <n> : "$BERRET_USER_NAME"
<Multi_key> <space> <e> : "$BERRET_USER_EMAIL"
EOF
