.assembly extern legacy library mscorlib {}

.assembly ldfld.exe{}

.class public _ldfld {

.field public int32 a
.field private string foo
.field public int32 b

.method public instance void __ldfld_test() il managed {
.maxstack  8

    ldarg.0
    ldarg.0
    ldflda     int32 _ldfld::a
    call       instance string [mscorlib]System.Int32::ToString()
    stfld      string _ldfld::foo
    ldarg.0
    dup
    ldfld      int32 _ldfld::b
    ldarg.0
    ldfld      int32 _ldfld::a
    add
    stfld      int32 _ldfld::b
    ret
  }

.method public static int32 main() {
.entrypoint
.maxstack	10
	ldc.i4.1
	ret
}
}
