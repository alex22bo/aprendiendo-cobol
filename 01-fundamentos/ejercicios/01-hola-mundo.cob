      *> Ejercicio 1: Hola, mundo
      *> Objetivo: entender la estructura mínima de un programa COBOL
      *> (las 4 divisiones) y compilarlo con GnuCOBOL.
      *>
      *> Compilar:   cobc -x 01-hola-mundo.cob -o hola-mundo
      *> Ejecutar:   ./hola-mundo

       IDENTIFICATION DIVISION.
       PROGRAM-ID. HOLA-MUNDO.
       AUTHOR. Luis Alexander Borjas Zamora.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-MENSAJE       PIC X(40) VALUE "Hola, mundo desde COBOL".

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY WS-MENSAJE
           STOP RUN.
