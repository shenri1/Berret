#!/bin/bash

# Stream music using https://spotify.com
if [ ! -f /etc/dnf/sources.list.d/spotify.list ]; then
  [ -f /etc/dnf/trusted.gpg.d/spotify.gpg ] && sudo rm /etc/dnf/trusted.gpg.d/spotify.gpg
  curl -sS https://download.spotify.com/debian/pubkey_C85668DF69375001.gpg | sudo gpg --dearmor --yes -o /etc/dnf/trusted.gpg.d/spotify.gpg
  echo "deb [signed-by=/etc/dnf/trusted.gpg.d/spotify.gpg] https://repository.spotify.com stable non-free" | sudo tee /etc/dnf/sources.list.d/spotify.list
fi

sudo dnf update
sudo dnf install -y spotify-client
