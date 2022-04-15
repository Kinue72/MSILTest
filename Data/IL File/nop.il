.assembly extern legacy library mscorlib {}
.assembly nop.exe{}

.class public _nop {

.method public static int32 main() {
.entrypoint
.maxstack	10
	nop
	ldc.i4.1
	ret
}
}
