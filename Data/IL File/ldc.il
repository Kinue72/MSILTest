.assembly extern legacy library mscorlib {}

.assembly ldc.exe {}

.class _ldc {
.method public static int32 main() {
.entrypoint
.maxstack       10
	ldc.i4.0
	ldc.i4.1
	add
	ldc.i4.2
	add
	ldc.i4.3
	add
	ldc.i4.4
	add
	ldc.i4.5
	add
	ldc.i4.6
	add
	ldc.i4.7
	add
	ldc.i4.8
	add
	ldc.i4.m1
	add
	ldc.i4.M1
	add
	ldc.i4.s 1
	add
	ldc.i4	2
	add
	ldc.i8 3
	add
	ldc.r4 1
	add
	ldc.r8 1
	add
	conv.i4
	ret
}
}

