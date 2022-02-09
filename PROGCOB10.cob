       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB08.
      **************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = BRUNO LEONEL 
      * OBJETIVO = VARIAVEIS NIVEL 88 - LOGICA
      * DATA = XX/XX/XXXX
      **************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-USER PIC 9(02) VALUE ZEROS.
       77 WRK-LEVEL PIC 9(02) VALUE ZEROS.
           88 ADM  VALUE 01.
           88 USER VALUE 02.
       PROCEDURE DIVISION.
           DISPLAY 'USUARIO:'.
           ACCEPT  WRK-USER.
           DISPLAY 'NIVEL:'.
           ACCEPT  WRK-LEVEL .
           
           IF ADM 
                   DISPLAY 'ADMIN'
           ELSE 
                   IF USER
                             DISPLAY 'USUARIO'
                   ELSE
                             DISPLAY 'NAO AUTORIZADO'
           END-IF.                    
           STOP RUN.
