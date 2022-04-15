.assembly extern legacy library mscorlib {}

.assembly ldelem.exe {}

.class _ldelem {

.method public static void __ldelem_ref() cil managed{
.maxstack  2
    ldnull
    ldc.i4.0
    ldelem.ref
    ret
}

.method public static void __ldelem() cil managed{
.maxstack  2
    ldnull
    ldc.i4.0
    ldelem   ['mscorlib']System.Double
    ret
}

.method public static void __ldelema() cil managed{
.maxstack  2
    ldnull
    ldc.i4.0
    ldelema   ['mscorlib']System.Double
    ret
}

.method public static void __ldelem_i() cil managed{
.maxstack  2
    ldnull
    ldc.i4.0
    ldelem.i
    ret
}

.method public static void __ldelem_i1() cil managed{
.maxstack  2
    ldnull
    ldc.i4.0
    ldelem.i1
    ret
}

.method public static void __ldelem_i2() cil managed{
.maxstack  2
    ldnull
    ldc.i4.0
    ldelem.i2
    ret
}

.method public static void __ldelem_i4() cil managed{
.maxstack  2
    ldnull
    ldc.i4.0
    ldelem.i4
    ret
}

.method public static void __ldelem_i8() cil managed{
.maxstack  2
    ldnull
    ldc.i4.0
    ldelem.i8
    ret
}

.method public static void __ldelem_r4() cil managed{
.maxstack  2
    ldnull
    ldc.i4.0
    ldelem.r4
    ret
}

.method public static void __ldelem_r8() cil managed{
.maxstack  2
    ldnull
    ldc.i4.0
    ldelem.r8
    ret
}

.method public static void __ldelem_u1() cil managed{
.maxstack  2
    ldnull
    ldc.i4.0
    ldelem.u1
    ret
}

.method public static void __ldelem_u2() cil managed{
.maxstack  2
    ldnull
    ldc.i4.0
    ldelem.u2
    ret
}

.method public static void __ldelem_u4() cil managed{
.maxstack  2
    ldnull
    ldc.i4.0
    ldelem.u4
    ret
}

.method public static void __ldelem_u8() cil managed{
.maxstack  2
    ldnull
    ldc.i4.0
    ldelem.u8
    ret
}



.method public static int32 main() {
.entrypoint
.maxstack       10
	ldc.i4.1
	ret
}
}

