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