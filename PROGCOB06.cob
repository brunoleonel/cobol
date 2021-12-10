       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB06.
      **************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = BRUNO LEONEL 
      * OBJETIVO = POSITIVOS E NEGATIVOS
      * DATA = XX/XX/XXXX
      **************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUM1     PIC 9(02)  VALUE ZEROS.
       77 WRK-NUM2     PIC 9(02)  VALUE ZEROS.
       77 WRK-RES      PIC S9(03) VALUE ZEROS.
       77 WRK-RES-MSK  PIC -ZZ9   VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT  WRK-NUM1 FROM CONSOLE.
           ACCEPT  WRK-NUM2 FROM CONSOLE.
      *********** SUBTRACAO *****************
           SUBTRACT WRK-NUM1 FROM WRK-NUM2 GIVING WRK-RES.
           MOVE     WRK-RES TO WRK-RES-MSK.
           DISPLAY 'COM SINAL: '   WRK-RES.
           DISPLAY 'COM MASCARA: ' WRK-RES-MSK.
      ***************************************
           STOP RUN.
