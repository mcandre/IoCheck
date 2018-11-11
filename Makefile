all: install test

test:
	@io example.io

editorconfig:
	@git ls-files -z | grep -av patch | xargs -0 -r -n 100 $(shell npm bin)/eclint check

lint: editorconfig

install:
	@mkdir -p ~/.io/IoCheck
	@cp -R IoCheck.io ~/.io/IoCheck

uninstall:
	@rm -rf ~/.io/IoCheck
