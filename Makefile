PREFIX ?= /usr/local
CC ?= cc
LDFLAGS = -lX11

output: dwmblocks.c blocks.def.h blocks.h
	${CC}  dwmblocks.c $(LDFLAGS) -o dwmblocks
blocks.h:
	cp blocks.def.h $@


clean:
	rm -f *.o *.gch dwmblocks
install: output
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	install -m 0755 dwmblocks $(DESTDIR)$(PREFIX)/bin/dwmblocks
	mkdir -p $(DESTDIR)$(PREFIX)/bin/dwmblocks_scripts/
	cp ./scripts/* $(DESTDIR)$(PREFIX)/bin/dwmblocks_scripts/
uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/dwmblocks
	rm -rf $(DESTDIR)$(PREFIX)/bin/dwmblocks_scripts/
