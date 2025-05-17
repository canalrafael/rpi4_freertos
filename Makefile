
all:
	@echo "Try another command."

build:
	@echo "Compiling Bao..."
	$(MAKE) -C bao-demos

copy:
	@echo Do not forget to mount the SD Card.
	@cp ./arquivos_SD/** /media/$(USER)/boot/ --verbose
	@cp ./bao-demos/wrkdir/imgs/rpi4/linux+freertos/bao.bin /media/$(USER)/boot/ --verbose
