all:
	(cd src; make all)

clean:
	(cd src; make clean)
	rm -f bin/*
	rm -f lib/*

install:
	(cd src; make install)
