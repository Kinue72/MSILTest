.assembly extern legacy library mscorlib {}

.assembly neg.exe{}

.class public _neg {

.method public static int32 main() {
.entrypoint
.maxstack	10
        ldc.i4.1
        neg
        ret
}
}
