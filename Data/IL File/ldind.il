.assembly extern legacy library mscorlib {}

.assembly ldind.exe{}


.class public _ldind {

.field public static int8 LOADME


.method public	void _test_ldind_ref() {
.maxstack		0
	ret
}

.method public int32 _ldind_ref() {
.maxstack	2
.locals	(class _ldind)
	newobj	instance 	void _ldind::_test_ldind_ref()
	stloc	0
	ldloca		0
	ldind.ref
	ldloc	0
	ceq
	brfalse		FAIL
	ldc.i4 100
	ret
FAIL:
	ldc.i4	0x0
	ret
}



.method public static	int32 main() {
.entrypoint
.maxstack		2
.locals	(class _ldind)
	ldsflda		int8 _ldind::LOADME
	ldc.i4.1	
	stind.i1
	ldsflda		int8 _ldind::LOADME
	ldind.i
	ldc.i4.1
	add
	ldsflda		int8 _ldind::LOADME
	ldind.i1
	add
	ldsflda		int8 _ldind::LOADME
	ldind.i2
	add
	ldsflda		int8 _ldind::LOADME
	ldind.i4
	add
	ldsflda		int8 _ldind::LOADME
	ldind.i8
	add
	ldsflda		int8 _ldind::LOADME
	ldind.u1
	add
	ldsflda		int8 _ldind::LOADME
	ldind.u2
	add
	ldsflda		int8 _ldind::LOADME
	ldind.u4
	add
	ldsflda		int8 _ldind::LOADME
	ldind.u8
	add
	ldsflda		int8 _ldind::LOADME
	ldind.r4
	add
	ldsflda		int8 _ldind::LOADME
	ldind.r8
	add
	conv.i4
	ret
}
}