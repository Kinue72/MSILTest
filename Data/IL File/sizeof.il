.assembly extern legacy library mscorlib {}
.assembly sizeof.exe{}

.class public _sizeof {

.method public static int32 main() {
.entrypoint
.maxstack	10
	sizeof [mscorlib]System.Int32
	ret
}
}
