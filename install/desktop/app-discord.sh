#!/usr/bin/env bash

cd /tmp
wget -O discord.rpm "https://discord.com/api/download?platform=linux&format=rpm"
dnf install -y ./discord.rpm
rm discord.rpm
cd -
