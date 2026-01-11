#!/bin/bash

# Stream music using https://spotify.com

ARCH=$(dpkg --print-architecture)

if [ "$ARCH" = "arm64" ] || [ "$ARCH" = "armhf" ]; then
  # Spotify doesn't support ARM64/armhf on Linux (no apt, snap, or flatpak support)
  echo "⚠️  Spotify is not available for ARM64 architecture. Skipping installation."
  echo "   You can use Spotify Web Player at https://open.spotify.com instead."
else
  # Use official apt repository for amd64
  if [ ! -f /etc/apt/sources.list.d/spotify.list ]; then
    [ -f /etc/apt/trusted.gpg.d/spotify.gpg ] && sudo rm /etc/apt/trusted.gpg.d/spotify.gpg
    curl -sS https://download.spotify.com/debian/pubkey_C85668DF69375001.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
    echo "deb [signed-by=/etc/apt/trusted.gpg.d/spotify.gpg] https://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
  fi

  sudo apt update
  sudo apt install -y spotify-client
fi
