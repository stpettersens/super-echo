#
# Makefile to build standalone `secho` Unix-like executable program.
#
FREEZE = freeze
IO = secho

make:
	$(FREEZE) $(IO).py
	make -f Makefile
	rm -r -f Makefile *.o *.c
	strip $(IO)



