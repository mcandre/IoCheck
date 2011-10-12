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

	0 to(len) map(i,
		gen call
	)
)

genString := block(
	genSeq call(genChar) join
)

IoCheck forAll := method(property, generators,
	0 to(100) map(i,
		values := generators map(g, g call)

		if(performWithArgList(property, values) not,
			"*** Failed!" println
			values map(v, println)
			break
		)
	)

	"+++ OK, passed 100 tests." println
)