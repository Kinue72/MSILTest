.assembly extern legacy library mscorlib {}
.assembly not.exe{}

.class public _not {

.method public static int32 main() {
.entrypoint
.maxstack	10
	ldc.i4.1
	not
	ret
}
}
