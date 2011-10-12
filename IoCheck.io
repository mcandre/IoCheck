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