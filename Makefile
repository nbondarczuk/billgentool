all:
	$(MAKE) -C src $@

clean:
	$(MAKE) -C src $@
	rm -f bin/*
	rm -f lib/*

install:
	$(MAKE) -C src $@

include config/project.mk
