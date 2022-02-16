       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB15.
      **************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = BRUNO LEONEL 
      * OBJETIVO = COPY BOOK
      * DATA = XX/XX/XXXX
      **************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           COPY 'BOOK.cob'.
       PROCEDURE DIVISION.
       0001-PRINCIPAL.
           PERFORM 0100-INICIALIZAR.
           PERFORM 0200-PROCESSAR UNTIL WRK-VENDAS = 0.
           PERFORM 0300-FINALIZAR.
           STOP RUN.
       0100-INICIALIZAR.
           ACCEPT  WRK-VENDAS.
       0200-PROCESSAR.
           ADD 1 TO WRK-CONTADOR.
           ADD      WRK-VENDAS TO WRK-ACUMULADO.
           ACCEPT   WRK-VENDAS.
       0300-FINALIZAR.
           DISPLAY 'VALOR TOTAL DE VENDAS ===> ' WRK-ACUMULADO.
           DISPLAY 'TOTAL DE VENDAS EFETUADAS ===> ' WRK-CONTADOR.
           DISPLAY 'PROCESSAMENTO FINALIZADO'.
           DISPLAY '------------------------'.
