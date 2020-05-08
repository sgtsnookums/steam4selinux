all: steam.pp

%.pp: %.te %.fc %.if
	$(MAKE) -f /usr/share/selinux/devel/Makefile $@

clean:
	rm -f *.pp
	rm -rf tmp

.PHONY: all clean
