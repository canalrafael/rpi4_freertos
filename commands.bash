echo "This is not supposed to be runned. cat it"
exit

lsof /dev/ttyUSB0 # list of programs using
sudo dmesg # journaling?
cp $PWD/bao-demos/wrkdir/imgs/rpi4/u-boot.bin /media/$USER/boot # the only file you need to copy
fatload mmc 0 0x200000 bao.bin; go 0x200000

