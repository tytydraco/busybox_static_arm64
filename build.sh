#!/usr/bin/env bash

git clone git://git.busybox.net/busybox
cd busybox || exit 1

make CROSS_COMPILE=aarch64-linux-gnu- clean
make CROSS_COMPILE=aarch64-linux-gnu- defconfig

echo "CONFIG_STATIC=y" >> .config
sed -i 's/^CONFIG_TC=y$/# CONFIG_TC is not set/' .config

make CROSS_COMPILE=aarch64-linux-gnu- oldconfig
LDFLAGS="--static" make CROSS_COMPILE=aarch64-linux-gnu- ARCH=arm64 -j "$(nproc)"