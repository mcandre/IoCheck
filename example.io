#!/usr/bin/env io

Importer addSearchPath("/Users/andrew/.io/IoCheck")

IoCheck

propEven := block(i,
	i % 2 == 0
)

IoCheck forAll(propEven, list(genInt))