test-%:
	@$pio test -d $* --without-uploading
	@$pio check -d $* --fail-on-defect

build-%:
	@$pio run --target clean -d $*

#some platformio command


deploy-%:
#some ota thingy
	@$pio remote --agent NAME update