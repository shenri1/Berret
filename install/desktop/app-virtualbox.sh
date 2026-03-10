#!/usr/bin/env bash

dnf install -y virtualbox virtualbox-ext-pack
usermod -aG vboxusers "$SUDO_USER"
