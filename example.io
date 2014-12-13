#!/usr/bin/env io

Importer addSearchPath("~/.io/IoCheck")

IoCheck

propEven := block(i,
  i % 2 == 0
)

IoCheck forAll(propEven, list(genInt))

genEven := block(
  i := genInt call

  if(i % 2 != 0,
    i := i + 1
  )

  i
)

IoCheck forAll(propEven, list(genEven))

propReversible := block(s,
  s == s reverse reverse
)

IoCheck forAll(propReversible, list(genString))
