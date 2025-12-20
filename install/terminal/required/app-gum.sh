#!/bin/bash

# Gum is used for the Omakub commands for tailoring Omakub after the initial install
cd /tmp
GUM_VERSION="0.17.0"

# Detect architecture
ARCH=$(uname -m)
if [ "$ARCH" = "aarch64" ]; then
  GUM_ARCH="arm64"
else
  GUM_ARCH="amd64"
fi

wget -qO gum.deb "https://github.com/charmbracelet/gum/releases/download/v${GUM_VERSION}/gum_${GUM_VERSION}_${GUM_ARCH}.deb"
sudo apt-get install -y --allow-downgrades ./gum.deb
rm gum.deb
cd -
