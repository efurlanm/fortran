! principal.f90
PROGRAM meu_programa_lto
  USE utilidades
  IMPLICIT NONE

  integer :: valor_inicial
  integer :: resultado

  WRITE(*,*) "Entre com um valor numerico:"
  READ(*,*) valor_inicial

  resultado = dobrar(valor_inicial)

  PRINT *, "O resultado final e: ", resultado

END PROGRAM meu_programa_lto
