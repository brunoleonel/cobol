       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB12.
      **************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = BRUNO LEONEL 
      * OBJETIVO = PERFORM TIMES
      * DATA = XX/XX/XXXX
      **************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-DATA.
           02 WRK-NUMERO    PIC 9(02) VALUE ZEROS.
           02 WRK-CONTADOR  PIC 9(02) VALUE 1.
           02 WRK-RESULTADO PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
       0001-PRINCIPAL.
           PERFORM 0100-INICIALIZAR.
           PERFORM 0200-PROCESSAR.
           PERFORM 0300-FINALIZAR.
           STOP RUN.
       0100-INICIALIZAR.
           ACCEPT  WRK-NUMERO.
       0200-PROCESSAR.
           PERFORM 10 TIMES
                   COMPUTE WRK-RESULTADO = WRK-CONTADOR * WRK-NUMERO
                   DISPLAY WRK-CONTADOR ' X ' WRK-NUMERO 
                             ' = ' WRK-RESULTADO
                   ADD 1 TO WRK-CONTADOR
           END-PERFORM.
       0300-FINALIZAR.
           DISPLAY 'PROCESSAMENTO FINALIZADO'.
           DISPLAY '------------------------'.
