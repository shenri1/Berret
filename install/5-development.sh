#!/usr/bin/env bash

DEV_PKGS=(
  cargo
  clang
  llvm
  ImageMagick
  ImageMagick-heic
  gh
  java-25-openjdk.x86_64
  java-21-openjdk.x86_64
  python3
  gcc
  g++
)

echo "Installing base utilities..."
dnf install -y "${DEV_PKGS[@]}"

if command -v rpm-ostree &>/dev/null; then
    echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null
else
    sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
    echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null
    sudo dnf check-update
fi


