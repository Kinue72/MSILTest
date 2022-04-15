.assembly extern legacy library mscorlib {}
.assembly refanyval.exe{}

.class public _refanyval {

.method public static int32 main() {
.entrypoint
.locals		(int32)
.maxstack		20
	ldc.i4		0x02468ACF
	stloc		0
	ldloca		0
	mkrefany	int32
	refanyval	int32
	ldind.i4
	ldloc		0
	ceq
	ret
}
}
