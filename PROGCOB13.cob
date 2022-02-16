       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB13.
      **************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = BRUNO LEONEL 
      * OBJETIVO = PERFORM VARYING
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
           PERFORM VARYING WRK-CONTADOR FROM 1 BY 1
                             UNTIL WRK-CONTADOR > 10
                   COMPUTE WRK-RESULTADO = WRK-CONTADOR * WRK-NUMERO
                   DISPLAY WRK-CONTADOR ' X ' WRK-NUMERO 
                             ' = ' WRK-RESULTADO
           END-PERFORM.
       0300-FINALIZAR.
           DISPLAY 'PROCESSAMENTO FINALIZADO'.
           DISPLAY '------------------------'.
