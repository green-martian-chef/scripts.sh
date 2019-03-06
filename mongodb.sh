#!/usr/bin/env bash

# ---------------------------------------------------------------------------
#
# mongodb.sh    : Install MongoDB from official repository
#
# Usage       : chmod +x ./mongodb.sh && ./mongodb.sh
#
# Site        : github.com/jameskahn/scripts.sh
# Author      : James Kahn <talkwithjames@protonmail.com>
# Date        : 20190603
# License     : GPLv3
#
# ---------------------------------------------------------------------------

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4

source /etc/os-release

echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu ${UBUNTU_CODENAME}/mongodb-org/4.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.0.list

sudo apt update

sudo apt install -y mongodb-org
