all: steam.pp

%.pp: %.te %.fc %.if
	$(MAKE) -f /usr/share/selinux/devel/Makefile $@

install: steam.pp
	semodule -i $<

uninstall:
	semodule -r steam

clean:
	rm -f *.pp
	rm -rf tmp

.PHONY: all clean install uninstall
