echo "This is not supposed to be runned. cat it"
exit

lsof /dev/ttyUSB0 # list of programs using
sudo dmesg # journaling?
cp $PWD/bao-demos/wrkdir/imgs/rpi4/u-boot.bin /media/$USER/boot # the only file you need to copy
fatload mmc 0 0x200000 bao.bin; go 0x200000

# Compilation
ROOT=$(pwd)
cp -rf $ROOT/bao-demos/wrkdir/imgs/rpi4/firmware/boot/* /media/$USER/boot 	## ...firmware?
cp $ROOT/bao-demos/platforms/rpi4/config.txt /media/$USER/boot			## ...unharmful txt file
cp $ROOT/bao-demos/wrkdir/imgs/rpi4/bl31.bin /media/$USER/boot			## ...
cp $ROOT/bao-demos/wrkdir/imgs/rpi4/u-boot.bin /media/$USER/boot		## ...
cp $ROOT/bao-demos/wrkdir/imgs/rpi4/linux+freertos/bao.bin /media/$USER/boot 	## seemingly the important one
umount /media/$USER/boot


# /home/nyne/code/rpi4_freertos/bao-demos/wrkdir/srcs/bao/src/core/ (+inc)

# /home/nyne/code/rpi4_freertos/bao-demos/wrkdir/srcs
# 1. diretorios -> vms
# 2. mudar o NAME= em Makefile para um nome unico

# export BAO_DEMOS_FREERTOS=$BAO_DEMOS_WRKDIR_SRC/freertos(1, 2, 3)
# make -C $BAO_DEMOS_FREERTOS PLATFORM=$PLATFORM $FREERTOS_PARAMS
# cp $BAO_DEMOS_FREERTOS/build/$PLATFORM/freertos(1, 2, 3).bin $BAO_DEMOS_WRKDIR_IMGS

# arquivo de configuracao das vms
# /home/nyne/code/rpi4_freertos/bao-demos/demos/linux+freertos/configs/rpi4.c

