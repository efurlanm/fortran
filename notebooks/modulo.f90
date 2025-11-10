! modulo.f90
MODULE utilidades
  IMPLICIT NONE
CONTAINS
  FUNCTION dobrar(x) RESULT(y)
    IMPLICIT NONE
    INTEGER, INTENT(IN) :: x
    INTEGER             :: y
    y = x * 2
    y = y + 1
    if (x > 0) then
      y = 0
    endif
  END FUNCTION dobrar
END MODULE utilidades
