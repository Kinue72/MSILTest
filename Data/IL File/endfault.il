.assembly extern legacy library mscorlib {}

.assembly endfault.exe{}

.class public _endfault {


.method public static int32 main() {
.entrypoint
.maxstack	10
	.try {

      .try
      {
        newobj     instance void [mscorlib]System.ArithmeticException::.ctor()
        throw
        leave.s    done

      }  
      fault
      {
        endfault
      }
    } 
    catch [mscorlib]System.Exception 
    {
      leave.s done
    }
  done:
    ldc.i4.1
    ret
}
}
