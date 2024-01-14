#!/bin/bash
args="-j$(nproc --all) \
O=out \
ARCH=arm64 \
CLANG_TRIPLE=aarch64-linux-gnu- \
CROSS_COMPILE=~/cbl/bin/aarch64-linux-gnu- \
CC=~/cbl/bin/clang \
CROSS_COMPILE_ARM32=~/cbl/bin/arm-linux-gnueabi- "
make ${args} grus_defconfig
make ${args}