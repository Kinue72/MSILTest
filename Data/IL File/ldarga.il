.assembly extern legacy library mscorlib {}

.assembly ldarga.exe {}

.class _ldarga {

.method public static int32 args(int32) {
.maxstack	5
	ldarga 0
	ldind.i4
	ldc.i4 0x2
	add
	ret
}

.method public static int32 args1(int32) {
.maxstack	5
	ldarga.s 0
	ldind.i4
	ldc.i4 0x2
	add
	ret
}

.method public static int32 main() {
.entrypoint
.maxstack       10
	ldc.i4		0x80000002
	ldc.i4		0x80000000
	call	int32 _ldarga::args(int32)
	ceq
	brfalse		FAIL
	
	ldc.i4		0x00000001
	ldc.i4		0xFFFFFFFF
	call	int32 _ldarga::args1(int32)
	ceq
	brfalse		FAIL
	
	ldc.i4 100
	ret
FAIL:
	ldc.i4	0x0
	ret
}
}
