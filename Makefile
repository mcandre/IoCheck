all: install test

test:
	./example.io

install:
	mkdir -p ~/.io/IoCheck
	cp -R IoCheck.io ~/.io/IoCheck

uninstall:
	rm -rf ~/.io/IoCheck
