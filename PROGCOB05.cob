       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB05.
      **************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = BRUNO LEONEL 
      * OBJETIVO = OPERACOES ARITMÉTICAS
      * DATA = XX/XX/XXXX
      **************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUM1     PIC 9(02) VALUE ZEROS.
       77 WRK-NUM2     PIC 9(02) VALUE ZEROS.
       77 WRK-RES      PIC 9(03) VALUE ZEROS.
       77 WRK-REST     PIC 9(03) VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT  WRK-NUM1 FROM CONSOLE.
           ACCEPT  WRK-NUM2 FROM CONSOLE.
      *********** SOMA **********************
           ADD     WRK-NUM1 WRK-NUM2 TO WRK-RES.
           DISPLAY 'SOMA: ' WRK-RES.
      *********** SUBTRACAO *****************
           SUBTRACT WRK-NUM1 FROM WRK-NUM2 GIVING WRK-RES.
           DISPLAY 'SUBTRACAO: ' WRK-RES.
      *********** DIVISAO *******************
           DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-RES
               REMAINDER WRK-REST.
           DISPLAY 'DIVISAO: ' WRK-RES.
           DISPLAY 'RESTO: '   WRK-REST.
      *********** MULTIPLICACAO *************
           MULTIPLY WRK-NUM1 BY WRK-NUM2 GIVING WRK-RES.
           DISPLAY 'MULTIPLICACAO: ' WRK-RES.     
      *********** COMPUTE *******************
           COMPUTE WRK-RES = (WRK-NUM1 - WRK-NUM2) / 2.
           DISPLAY 'MEDIA: ' WRK-RES.
      ***************************************
           STOP RUN.
