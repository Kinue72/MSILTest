.assembly extern legacy library mscorlib {}

.assembly bne.exe{}

.class public _bne {

.method public	static int32 main() {
.entrypoint

	ldc.i4 		100
	ldc.i4 		110
	bne.un		next0
	br			fail
next0:
	ldc.i4 		100
	ldc.i4 		100
	bne.un.s	fail
	br			pass

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