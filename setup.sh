#!/usr/bin/env sh

ARCH=$(uname -m)
if [[ "$ARCH" != "armv7l" ]]; then
    echo "This is not a raspberrypi"
    echo "Please run on a pi"
    exit 1
fi

curl -sSL https://get.docker.com | sh
sudo apt-get install -y --no-install-recommends docker-compose

