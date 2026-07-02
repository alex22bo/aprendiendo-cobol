      *> Ejercicio 3: Condicionales - EVALUATE y nivel 88
      *> Objetivo: EVALUATE es el "switch" de COBOL (mas potente,
      *> permite rangos y multiples condiciones). El nivel 88 define
      *> una condicion con nombre propio - no existe equivalente directo
      *> en C/C++/Python, es una forma de darle semantica de negocio
      *> a un valor (ej. "es-elegible" en vez de "estado = 1").
      *>
      *> Compilar:   cobc -x 03-condicionales-evaluate.cob -o condicionales
      *> Ejecutar:   ./condicionales

       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONDICIONALES-EVALUATE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-EDAD          PIC 9(3) VALUE 25.
       01 WS-CATEGORIA     PIC X(15).

       01 WS-ESTADO-CLIENTE PIC X(1) VALUE "A".
           88 CLIENTE-ACTIVO      VALUE "A".
           88 CLIENTE-SUSPENDIDO  VALUE "S".
           88 CLIENTE-BAJA        VALUE "B".

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      *> EVALUATE con rangos, similar a un switch-case con "case ranges"
           EVALUATE TRUE
               WHEN WS-EDAD < 18
                   MOVE "MENOR" TO WS-CATEGORIA
               WHEN WS-EDAD >= 18 AND WS-EDAD < 65
                   MOVE "ADULTO" TO WS-CATEGORIA
               WHEN OTHER
                   MOVE "SENIOR" TO WS-CATEGORIA
           END-EVALUATE

           DISPLAY "Edad: " WS-EDAD " -> Categoria: " WS-CATEGORIA

      *> Uso de nivel 88: se lee como una frase de negocio
           IF CLIENTE-ACTIVO
               DISPLAY "El cliente esta activo, se procesa la solicitud"
           ELSE
               DISPLAY "El cliente no esta activo, se rechaza"
           END-IF

           STOP RUN.
