.assembly extern legacy library mscorlib {}

.assembly ceq.exe{}

.class public _ceq {
.method public static int32 main() {
.entrypoint
.maxstack	10
    ldc.i4.1
    ldc.i4.1
    ceq
	ret
}
}
