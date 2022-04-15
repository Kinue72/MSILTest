.assembly extern legacy library mscorlib {}

.assembly beq.exe{}

.class public _beq {

.method public	static int32 main() {
.entrypoint

	ldc.i4 		100
	ldc.i4 		100
	beq			next0
	br			fail
next0:
	ldc.i4 		100
	ldc.i4 		100
	beq.s		fail
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