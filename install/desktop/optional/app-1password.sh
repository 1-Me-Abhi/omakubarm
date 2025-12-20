#!/bin/bash

# Install 1password and 1password-cli single script
cd /tmp

# Detect architecture
ARCH=$(uname -m)
if [ "$ARCH" = "aarch64" ]; then
  ONEPW_ARCH="arm64"
else
  ONEPW_ARCH="amd64"
fi

wget "https://downloads.1password.com/linux/debian/${ONEPW_ARCH}/stable/1password-latest.deb" -O 1password.deb
sudo apt install ./1password.deb -y
rm 1password.deb
cd -