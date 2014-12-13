Range

IoCheck := Object clone

genInt := block(
  Random value(256) floor
)

genBool := block(
  Random value(2) floor == 1
)

genChar := block(
  Random value(128) floor asCharacter
)

genSeq := block(gen,
  len := Random value(100) floor

  # Io intermittantly borks on list(65) map(asCharacter)
  if(len == 1,
    len := len + 1
  )

  0 to(len) map(i,
    gen call
  )
)

genString := block(
  genSeq call(genChar) join
)

IoCheck forAll := method(property, generators,
  failed := false

  0 to(100) map(i,
    values := generators map(g, g call)

    if(property callWithArgList(values) not,
      failed := true

      "*** Failed!" println

      values map(println)

      break
    )
  )

  if(failed not,
    "+++ OK, passed 100 tests." println
  )

  failed not
)
