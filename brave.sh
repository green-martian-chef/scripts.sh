#!/usr/bin/env bash

# ---------------------------------------------------------------------------
#
# brave.sh    : Install Brave browser from official repository
#
# Usage       : chmod +x ./brave.sh && ./brave.sh
#
# Site        : github.com/jameskahn/scripts.sh
# Author      : James Kahn <talkwithjames@protonmail.com>
# Date        : 20190303
# License     : GPLv3
#
# ---------------------------------------------------------------------------

curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -

source /etc/os-release

echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/brave-browser-release-${UBUNTU_CODENAME}.list

sudo apt update

sudo apt install brave-browser brave-keyring
