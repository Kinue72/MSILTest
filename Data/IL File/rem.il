.assembly extern legacy library mscorlib {}

.assembly rem.exe{}

.class public _rem {

.method public static int32 main() {
.entrypoint
.maxstack	10
	ldc.i4.1
    ldc.i4.2
    rem
    ldc.i4.3
    rem.un
	ret
}
}
