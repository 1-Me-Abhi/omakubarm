#!/bin/bash

# Install 1password and 1password-cli using official apt repository
cd /tmp

# Detect architecture
ARCH=$(uname -m)
if [ "$ARCH" = "aarch64" ]; then
  ONEPW_ARCH="arm64"
else
  ONEPW_ARCH="amd64"
fi

# Add the 1Password GPG key
curl -sS https://downloads.1password.com/linux/keys/1password.asc | sudo gpg --dearmor --output /usr/share/keyrings/1password-archive-keyring.gpg

# Add the 1Password apt repository
echo "deb [arch=${ONEPW_ARCH} signed-by=/usr/share/keyrings/1password-archive-keyring.gpg] https://downloads.1password.com/linux/debian/${ONEPW_ARCH} stable main" | sudo tee /etc/apt/sources.list.d/1password.list

# Add the debsig-verify policy
sudo mkdir -p /etc/debsig/policies/AC2D62742012EA22/
curl -sS https://downloads.1password.com/linux/debian/debsig/1password.pol | sudo tee /etc/debsig/policies/AC2D62742012EA22/1password.pol
sudo mkdir -p /usr/share/debsig/keyrings/AC2D62742012EA22
curl -sS https://downloads.1password.com/linux/keys/1password.asc | sudo gpg --dearmor --output /usr/share/debsig/keyrings/AC2D62742012EA22/debsig.gpg

# Install 1Password
sudo apt update
sudo apt install -y 1password 1password-cli

cd -