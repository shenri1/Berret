#!/bin/bash

cd /tmp
wget https://discord.com/api/download?platform=linux -O discord.rpm
sudo dnf install ./discord.rpm -y
rm discord.rpm
cd -
