#!/bin/bash

ARCH=$(dpkg --print-architecture)

if [ "$ARCH" = "arm64" ] || [ "$ARCH" = "armhf" ]; then
  sudo snap remove spotify
else
  sudo apt remove -y spotify-client
fi
