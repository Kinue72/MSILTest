.assembly extern legacy library mscorlib {}
.assembly ldobj.exe{}

.class public _ldobj {

.method public static	int32 main() {
.entrypoint
.locals		(int32)
.maxstack		2
	ldc.i4.1
	stloc       0
	ldloca		0
	ldobj		[mscorlib]System.Int32
	ret
}
}
