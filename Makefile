#
# Makefile to build standalone `super-echo` Unix-like executable program.
#

FREEZE = cxfreeze
SOURCE = secho.py
TARGET = secho

make:
	$(FREEZE) $(SOURCE) --target-dir dist
	
dependencies:
	pip -q install cx_Freeze
	
test:
	sudo mv dist/${TARGET} /usr/bin 
	$(TARGET) normal text OK
	#$(TARGET) ! array, test, OK
	cat .travis.yml | $(TARGET)

clean:
	rm -r -f dist
	rm -r -f $(TARGET)
