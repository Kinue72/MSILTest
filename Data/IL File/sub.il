.assembly extern legacy library mscorlib {}
.assembly sub.exe{}

.class public _sub {

.method public static int32 main() {
.entrypoint
.maxstack	10
	ldc.i4.1
	ldc.i4.2
	sub
	ldc.i4.2
	sub.ovf
	ldc.i4.2
	sub.ovf.un
	conv.i4
	ret
}
}
