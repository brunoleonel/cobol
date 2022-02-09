       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB08.
      **************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = BRUNO LEONEL 
      * OBJETIVO = EVALUATE
      * DATA = XX/XX/XXXX
      **************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-DATA.
           02 WRK-NOTA1 PIC 9(02) VALUE ZEROS.
           02 WRK-NOTA2 PIC 9(02) VALUE ZEROS.
           02 WRK-MEDIA PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT  WRK-NOTA1.
           ACCEPT  WRK-NOTA2.
           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.
           EVALUATE WRK-MEDIA
                   WHEN 6 THRU 10
                             DISPLAY 'APROVADO'
                   WHEN 2 THRU 5
                             DISPLAY 'RECUPERACAO'
                   WHEN OTHER     
                             DISPLAY 'REPROVADO'
           END-EVALUATE.
           STOP RUN.
