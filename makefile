#
# Makefile to build standalone `secho` Unix-like executable program.
#
FREEZE = freeze
IO = secho

make:
	$(FREEZE) $(IO).py
	make -f Makefile
	rm -f Makefile *.o *.c
	strip $(IO)

clean:
	rm -f $(IO)
