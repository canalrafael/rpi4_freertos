#!/usr/bin/env bash

### [https://github.com/bao-project/bao-demos/tree/master]

# (0) https://developer.arm.com/downloads/-/arm-gnu-toolchain-downloads
export PYTHONPATH=/usr
export CROSS_COMPILE=/home/nyne/code/bao/arm-gnu-toolchain-13.3.rel1-x86_64-aarch64-none-elf/bin/aarch64-none-elf-

# (1)
export PLATFORM=rpi4
export DEMO=linux+freertos
export ARCH=aarch64

export BAO_DEMOS=/home/nyne/code/bao/bao-demos
export BAO_DEMOS_WRKDIR=$BAO_DEMOS/wrkdir
export BAO_DEMOS_WRKDIR_SRC=$BAO_DEMOS_WRKDIR/srcs
export BAO_DEMOS_WRKDIR_BIN=$BAO_DEMOS_WRKDIR/bin
export BAO_DEMOS_WRKDIR_PLAT=$BAO_DEMOS_WRKDIR/imgs/$PLATFORM
export BAO_DEMOS_WRKDIR_IMGS=$BAO_DEMOS_WRKDIR_PLAT/$DEMO

# https://github.com/bao-project/bao-demos/blob/master/demos/linux+freertos/README.md
# export FVPR_VM_IMAGES="$BAO_DEMOS_WRKDIR_IMGS/freertos.bin@0x10000000 \
#    $BAO_DEMOS_WRKDIR_IMGS/linux.bin@0x20000000"

### [FreeRTOS] + [Linux]
# https://github.com/bao-project/bao-demos/blob/master/guests/freertos/README.md
export BAO_DEMOS_FREERTOS=$BAO_DEMOS_WRKDIR_SRC/freertos
export FREERTOS_PARAMS="STD_ADDR_SPACE=y"

####

export BAO_DEMOS_LINUX=$BAO_DEMOS/guests/linux
export BAO_DEMOS_LINUX_REPO=https://github.com/torvalds/linux.git
export BAO_DEMOS_LINUX_VERSION=v6.1
export BAO_DEMOS_LINUX_SRC=$BAO_DEMOS_WRKDIR_SRC/linux-$BAO_DEMOS_LINUX_VERSION

export BAO_DEMOS_LINUX_CFG_FRAG=$(ls $BAO_DEMOS_LINUX/configs/base.config\
    $BAO_DEMOS_LINUX/configs/$ARCH.config\
    $BAO_DEMOS_LINUX/configs/$PLATFORM.config 2> /dev/null)

export BAO_DEMOS_BUILDROOT=$BAO_DEMOS_WRKDIR_SRC/\
buildroot-$ARCH-$BAO_DEMOS_LINUX_VERSION
export BAO_DEMOS_BUILDROOT_DEFCFG=$BAO_DEMOS_LINUX/buildroot/$ARCH.config
export LINUX_OVERRIDE_SRCDIR=$BAO_DEMOS_LINUX_SRC

export BAO_DEMO_LINUX_VM=linux

#####
# (B.4)
export BAO_DEMOS_BAO=$BAO_DEMOS_WRKDIR_SRC/bao

# (B.5)
export BAO_DEMOS_FW=$BAO_DEMOS_WRKDIR_PLAT/firmware
export BAO_DEMOS_UBOOT=$BAO_DEMOS_WRKDIR_SRC/u-boot
export BAO_DEMOS_ATF=$BAO_DEMOS_WRKDIR_SRC/arm-trusted-firmware

# (Prepare SDCard)
export BAO_DEMOS_SDCARD_DEV=/dev/sda
export BAO_DEMOS_SDCARD=/media/$USER/boot
