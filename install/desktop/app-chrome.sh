#!/bin/bash

# Browse the web with the most popular browser. See https://www.google.com/chrome/
# Note: Google Chrome is not available for ARM64, Chromium will be installed instead

ARCH=$(uname -m)
if [ "$ARCH" = "aarch64" ]; then
  # Install Chromium for ARM64
  sudo apt install -y chromium-browser
  xdg-settings set default-web-browser chromium-browser.desktop
else
  cd /tmp
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
  sudo apt install -y ./google-chrome-stable_current_amd64.deb
  rm google-chrome-stable_current_amd64.deb
  xdg-settings set default-web-browser google-chrome.desktop
  cd -
fi
