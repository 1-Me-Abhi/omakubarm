#!/bin/bash

# Install 1password and 1password-cli using official apt repository

# Detect architecture
ARCH=$(uname -m)
if [ "$ARCH" = "aarch64" ]; then
  # 1Password does NOT provide ARM64 packages for Linux
  echo "⚠️  1Password is not available for ARM64 architecture. Skipping installation."
  echo "   You can use 1Password in your browser at https://my.1password.com instead."
  exit 0
fi

cd /tmp

# Add the 1Password GPG key
curl -sS https://downloads.1password.com/linux/keys/1password.asc | sudo gpg --dearmor --yes --output /usr/share/keyrings/1password-archive-keyring.gpg

# Add the 1Password apt repository
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/1password-archive-keyring.gpg] https://downloads.1password.com/linux/debian/amd64 stable main" | sudo tee /etc/apt/sources.list.d/1password.list

# Add the debsig-verify policy
sudo mkdir -p /etc/debsig/policies/AC2D62742012EA22/
curl -sS https://downloads.1password.com/linux/debian/debsig/1password.pol | sudo tee /etc/debsig/policies/AC2D62742012EA22/1password.pol
sudo mkdir -p /usr/share/debsig/keyrings/AC2D62742012EA22
curl -sS https://downloads.1password.com/linux/keys/1password.asc | sudo gpg --dearmor --yes --output /usr/share/debsig/keyrings/AC2D62742012EA22/debsig.gpg

# Install 1Password
sudo apt update
sudo apt install -y 1password 1password-cli

cd -