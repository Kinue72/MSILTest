.assembly extern legacy library mscorlib {}
.assembly add_ovf.exe {}

.class public _add_ovf {

.method public static int32 main() {
.entrypoint
.maxstack	6
	ldc.i4.1
    ldc.i4.1
    add.ovf
	conv.ovf.u1
    ldc.i4.1
	conv.ovf.u1
	add.ovf.un
	conv.ovf.i4
	ret
}
}