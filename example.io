#!/usr/bin/env io

IoCheck

propEven := block(i,
	i % 2 == 0
)

IoCheck forAll(propEven, list(genInt))