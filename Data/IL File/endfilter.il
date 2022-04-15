.assembly extern legacy library mscorlib {}

.assembly endfilter.exe{}

.class public _endfilter {


.method public static int32 main() {
.entrypoint
.maxstack	10

  .try
  {
    .try
    {
      .try
      {
        .try {
          leave.s    TRY_2
        }
        finally 
        {
          newobj     instance void [mscorlib]System.Exception::.ctor()
          throw
          endfinally
        }
        TRY_2:  leave.s    TRY_1
      }
      filter
      {
        pop
        ldc.i4.0
        endfilter
      } {
        pop
        leave.s    TRY_0
      }
      TRY_1:  leave.s    TRY_0
    }
    finally
    {
      newobj     instance void [mscorlib]System.Exception::.ctor()
      throw
      endfinally
    }
    TRY_0:  leave.s    done
  }
  filter
  {
    pop
    ldc.i4.0
    endfilter
  } {
    pop
    leave.s    done
  }
  done:  
	ldc.i4.1
	ret
}
}
