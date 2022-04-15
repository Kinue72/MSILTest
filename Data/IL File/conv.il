.assembly extern legacy library mscorlib {}

.assembly conv.exe{}

.class public _conv {

.method public static int32 main() {
.entrypoint
.maxstack	10
	ldc.i4 100
	conv.i
	conv.i1
	conv.i2
	conv.i4
	conv.i8
	conv.ovf.i
	conv.ovf.i.un
	conv.ovf.i1
	conv.ovf.i1.un
 	conv.ovf.i2
	conv.ovf.i2.un
	conv.ovf.i4
	conv.ovf.i4.un
	conv.ovf.i8
	conv.ovf.i8.un
	conv.ovf.u
	conv.ovf.u.un
	conv.ovf.u1
	conv.ovf.u1.un
	conv.ovf.u2
	conv.ovf.u2.un
	conv.ovf.u4
	conv.ovf.u4.un
	conv.ovf.u8
	conv.ovf.u8.un
	conv.r.un
	conv.r4
	conv.r8
	conv.u
	conv.u1
	conv.u2
	conv.u4
	conv.u8
	conv.i4
	ret
}
}
