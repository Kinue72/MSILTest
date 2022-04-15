.assembly extern legacy library mscorlib {}
.assembly add.exe {}

.class public _add {

.method public static int32 main() {
.entrypoint
.maxstack	6
	ldc.i4.1
    ldc.i4.1
    add
	ret
}
}
