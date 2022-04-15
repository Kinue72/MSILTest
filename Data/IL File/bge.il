.assembly extern legacy library mscorlib {}

.assembly bge.exe{}

.class public _bge {

.method public	static int32 main() {
.entrypoint

	ldc.i4 		100
	ldc.i4 		110
	bge			next0
	br			fail
next0:
	ldc.i4 		100
	ldc.i4 		90
	bge.s		fail
	br			next1
next1:
    ldc.i4 		100
    ldc.i4 		80
    bge.un      fail
    br          next2
next2:
    ldc.i4 		100
    ldc.i4 		120
	bge.un.s	pass
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