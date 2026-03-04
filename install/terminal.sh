#!/usr/bin/env bash

dnf install -y curl git unzip wget fd-find fzf bat whois ripgrep zoxide kitty

for installer in ~/.local/share/berret/install/terminal/required/*.sh; do
    source "$installer"
done

for installer in ~/.local/share/berret/install/terminal/langs/*.sh; do
    source "$installer"
done

for installer in ~/.local/share/berret/install/terminal/*.sh; do
    source "$installer"
done
