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

# By Paragon
# http://blurgle.blogspot.com/2006/08/converting-lists-into-messages-and.html

getSlot("Block") callWithArgList := method(argList,
	getSlot("self") doMessage(argList asMessage setName("call"))
)

IoCheck forAll := method(property, generators,
	0 to(100) map(i,
		values := generators map(g, g call)

		if(property callWithArgList(values) not,
			"*** Failed!" println
			values map(println)
			break
		)
	)

	"+++ OK, passed 100 tests." println
)