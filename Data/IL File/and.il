.assembly extern legacy library mscorlib {}
.assembly and.exe {}

.class public _and {

.method public static int32 main() {
.entrypoint
.maxstack	6
	ldc.i4.1
    ldc.i4.1
    and
	ret
}
}
