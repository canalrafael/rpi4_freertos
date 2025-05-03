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

