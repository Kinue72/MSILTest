.assembly extern legacy library mscorlib {}

.assembly blt.exe{}

.class public _blt {

.method public	static int32 main() {
.entrypoint

	ldc.i4 		100
	ldc.i4 		80
	blt			next0
	br			fail
next0:
	ldc.i4 		100
	ldc.i4 		140
	blt.s		fail
	br			next1
next1:
    ldc.i4 		100
    ldc.i4 		110
    blt.un      fail
    br          next2
next2:
    ldc.i4 		100
    ldc.i4 		90
	blt.un.s	pass
	br			fail

pass:
	ldc.i4 		100
	br			end
fail:
	ldc.i4		0x0
	br			end
end:
	ret
}
}