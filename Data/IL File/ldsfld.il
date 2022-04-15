.assembly extern legacy library mscorlib {}
.assembly ldsfld.exe{}

.class public _ldsfld {

.field public static int32 gay

.method public static	int32 main() {
.entrypoint
.locals		(void*)
.maxstack		2
	ldc.i4.1
	stsfld int32 _ldsfld::gay
	ldsflda		int32 _ldsfld::gay
	stloc.s		0
	ldsfld		int32 _ldsfld::gay
	ret
}
}
