.assembly extern System.Runtime
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )
  .ver 4:1:0:0
}

.assembly extern legacy library mscorlib {}

.assembly stind.exe{}


.class public _stind {

.method private static string _stind_ref(string, [out] object&)  {
.maxstack  8
    ldarg.1
    ldc.i4.0
    box        [System.Runtime]System.Boolean
    stind.ref
    ldstr      "Hello world"
    ldarg.0
    call       string [System.Runtime]System.String::Concat(string, string)
    ret
}


.field public static int8 I1
.field public static int16 I2
.field public static int32 I4
.field public static int64 I8
.field public static float32 R4
.field public static float64 R8
.field public static native int I


.method public static	int32 main() {
.entrypoint
.maxstack		2
	ldsflda		native int _stind::I
	ldc.i4.1	
    stind.i

	ldsflda		int8 _stind::I1
    ldc.i4      0x00000011
    stind.i1

    ldsflda		int16 _stind::I2
    ldc.i4      0x00002222
    stind.i2

    ldsflda		int32 _stind::I4
    ldc.i4      0x44444444
    stind.i4
	
    ldsflda		int64 _stind::I8
    ldc.i8      0x8888888888888888
    stind.i8
	
    ldsflda		float32 _stind::R4
    ldc.r4      float32(0x3F800000)
    stind.r4

    ldsflda		float64 _stind::R8
    ldc.r8      float64(0x3FF0000000000000)
    stind.r8
	
    ldc.i4.1
	ret
}
}