Range

IoCheck := Object clone

genInt := method(
	Random value(256) floor
)

genBool := method(
	Random value(2) floor == 1
)

genChar := method(
	Random value(128) floor asCharacter
)

genSeq := method(gen,
	len := Random value(100) floor

	0 to(len) map(i,
		gen()
	)
)

genString := method(
	genSeq(genChar) join
)