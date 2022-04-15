.assembly extern legacy library mscorlib {}
.assembly break.exe {}

.class public _break {

.method public static int32 main() {
.entrypoint
.maxstack	6
	break
	ldc.i4.1
    ldc.i4.1
    add
	ret
}
}
