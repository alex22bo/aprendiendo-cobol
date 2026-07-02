      *> Ejercicio 2: Operaciones aritmeticas
      *> Objetivo: comparar ADD/SUBTRACT/MULTIPLY/DIVIDE vs COMPUTE,
      *> y entender PICTURE numerico con decimales (equivalente a un
      *> float/double controlado, pero de precision fija - a diferencia
      *> de C/C++, aqui defines exactamente cuantos digitos y decimales).
      *>
      *> Compilar:   cobc -x 02-operaciones-aritmeticas.cob -o operaciones
      *> Ejecutar:   ./operaciones

       IDENTIFICATION DIVISION.
       PROGRAM-ID. OPERACIONES-ARITMETICAS.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-VALOR-A       PIC 9(5)V99 VALUE 150.50.
       01 WS-VALOR-B       PIC 9(5)V99 VALUE 30.25.
       01 WS-SUMA          PIC 9(6)V99.
       01 WS-RESTA         PIC 9(6)V99.
       01 WS-MULTIPLICA    PIC 9(7)V99.
       01 WS-DIVIDE        PIC 9(5)V9999.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      *> Estilo verboso (tradicional COBOL)
           ADD WS-VALOR-A TO WS-VALOR-B GIVING WS-SUMA
           SUBTRACT WS-VALOR-B FROM WS-VALOR-A GIVING WS-RESTA
           MULTIPLY WS-VALOR-A BY WS-VALOR-B GIVING WS-MULTIPLICA
           DIVIDE WS-VALOR-A BY WS-VALOR-B GIVING WS-DIVIDE

           DISPLAY "Valor A: " WS-VALOR-A
           DISPLAY "Valor B: " WS-VALOR-B
           DISPLAY "Suma:    " WS-SUMA
           DISPLAY "Resta:   " WS-RESTA
           DISPLAY "Mult:    " WS-MULTIPLICA
           DISPLAY "Div:     " WS-DIVIDE

      *> Estilo COMPUTE (mas parecido a una expresion de C/Python)
           COMPUTE WS-SUMA = WS-VALOR-A + WS-VALOR-B
           DISPLAY "Suma (COMPUTE): " WS-SUMA

           STOP RUN.
