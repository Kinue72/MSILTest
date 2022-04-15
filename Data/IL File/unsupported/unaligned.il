.assembly extern legacy library mscorlib {}

.assembly unaligned.exe{}

.class public _unaligned {

.method public static int32 main() {
.entrypoint
.locals	(int32)
.maxstack	2
	ldc.i4		0x89ABCDEF
	stloc		0
	ldloca		0x0
	ldc.i4		0x1
	add
	ldc.i4		0x11
	unaligned.	0x1 
	stind.i1
	ldloca		0x0
	ldind.i4
	ldc.i4		0x89AB11EF
	bne.un		FAIL
PASS:
	ldc.i4 100
	ret
FAIL:
	ldc.i4	0x0
	ret
}
}