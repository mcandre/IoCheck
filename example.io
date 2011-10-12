#!/usr/bin/env io

Importer addSearchPath("~/.io")

IoCheck

propEven := block(i,
	i % 2 == 0
)

IoCheck forAll(propEven, list(genInt))