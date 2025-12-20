#!/bin/bash

cd /tmp
LOCALSEND_VERSION=$(curl -s "https://api.github.com/repos/localsend/localsend/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')

# Detect architecture
ARCH=$(uname -m)
if [ "$ARCH" = "aarch64" ]; then
  LOCALSEND_ARCH="linux-arm-64"
else
  LOCALSEND_ARCH="linux-x86-64"
fi

wget -O localsend.deb "https://github.com/localsend/localsend/releases/latest/download/LocalSend-${LOCALSEND_VERSION}-${LOCALSEND_ARCH}.deb"
sudo apt install -y ./localsend.deb
rm localsend.deb
cd -
