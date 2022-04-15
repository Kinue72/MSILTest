.assembly extern legacy library mscorlib {}

.assembly box_unbox.exe{}

.class public _box_unbox {

.method public static int32 main() {
.entrypoint
	ldc.i4.1
	box       [mscorlib]System.Int32
	unbox     [mscorlib]System.Int32
	box       [mscorlib]System.Int32
	unbox.any [mscorlib]System.Int32
	ret
}
}