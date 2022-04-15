.assembly extern legacy library mscorlib {}

.assembly ldloc_stloc.exe{ }

.class public _ldloc_stloc {

.method public static int32 main() {
.entrypoint
.maxstack	10
.locals	(int32,int32,int32,int32,int32,int32)
	ldc.i4.1
	stloc.0
	ldc.i4.1
	stloc.1
	ldc.i4.1
	stloc.2
	ldc.i4.1
	stloc.3
	ldc.i4.1
	stloc.s 4
	ldc.i4.1
	stloc 5
	ldloc.0
	ldloc.1
	add
	ldloc.2
	add
	ldloc.3
	add
	ldloc.s 4
	add
	ldloc 5
	add
	ret
}
}
