#!/bin/bash

set -e

ascii_art='
  ___  __  __    _    _  ___   _ ____       _    ____  __  __ 
 / _ \|  \/  |  / \  | |/ / | | | __ )     / \  |  _ \|  \/  |
| | | | |\/| | / _ \ | ' /| | | |  _ \    / _ \ | |_) | |\/| |
| |_| | |  | |/ ___ \| . \| |_| | |_) |  / ___ \|  _ <| |  | |
 \___/|_|  |_/_/   \_\_|\_\\___/|____/  /_/   \_\_| \_\_|  |_|
'

echo -e "$ascii_art"
echo "=> Omakub ARM64 Edition - For Ubuntu 24.04+ on ARM64/x86_64"
echo -e "\nBegin installation (or abort with ctrl+c)..."

sudo apt-get update >/dev/null
sudo apt-get install -y git >/dev/null

echo "Cloning Omakub ARM64..."
rm -rf ~/.local/share/omakub
git clone https://github.com/1-Me-Abhi/omakubarm.git ~/.local/share/omakub >/dev/null
if [[ -n "$OMAKUB_REF" ]]; then
	cd ~/.local/share/omakub
	git fetch origin "${OMAKUB_REF}" && git checkout "${OMAKUB_REF}"
	cd -
fi

echo "Installation starting..."
source ~/.local/share/omakub/install.sh
