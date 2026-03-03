#!/usr/bin/env bash

cd /tmp

wget -O nvim.tar.gz "https://github.com/neovim/neovim/releases/download/stable/nvim-linux-x86_64.tar.gz"
tar -xf nvim.tar.gz
sudo install nvim-linux-x86_64/bin/nvim /usr/local/bin/nvim
sudo cp -R nvim-linux-x86_64/lib /usr/local/
sudo cp -R nvim-linux-x86_64/share /usr/local/
rm -rf nvim-linux-x86_64 nvim.tar.gz
cd -

sudo dnf install -y luarocks tree-sitter-cli

if [ ! -d "$HOME/.config/nvim" ]; then

    git clone https://github.com/LazyVim/starter ~/.config/nvim
    # Remove the .git folder, so you can add it to your own repo later
    rm -rf ~/.config/nvim/.git

    mkdir -p ~/.config/nvim/plugin/after
    cp ~/.local/share/berret/configs/neovim/transparency.lua ~/.config/nvim/plugin/after/

    cp ~/.local/share/berret/themes/tokyo-night/neovim.lua ~/.config/nvim/lua/plugins/theme.lua

    cp ~/.local/share/berret/configs/neovim/snacks-animated-scrolling-off.lua ~/.config/nvim/lua/plugins/

    echo "vim.opt.relativenumber = false" >>~/.config/nvim/lua/config/options.lua

    cp ~/.local/share/berret/configs/neovim/lazyvim.json ~/.config/nvim/
fi

if [[ -d ~/.local/share/applications ]]; then
  sudo rm -rf /usr/share/applications/nvim.desktop
  sudo rm -rf /usr/local/share/applications/nvim.desktop
  source ~/.local/share/berret/applications/Neovim.sh
fi
