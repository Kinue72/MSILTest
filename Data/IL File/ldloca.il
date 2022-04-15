.assembly extern legacy library mscorlib {}

.assembly ldloca.exe{}

.class public _ldloca {
.method public static int32 main() {
.entrypoint
.maxstack	10
.locals	(int32,int32&)
	ldloca		0
	stloc		1
	ldloca.s		0
	stloc		1
	ldc.i4.1
	ret
}
}
