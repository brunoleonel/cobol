       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB017.
      **************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = BRUNO LEONEL 
      * OBJETIVO = TABELAS - REDEFINES
      * USANDO DATA DO SISTEMA
      * DATA = XX/XX/XXXX
      **************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-MESES-EXTENSO.
           02 FILLER PIC X(09) VALUE 'JANEIRO'  .
           02 FILLER PIC X(09) VALUE 'FEVEREIRO'.
           02 FILLER PIC X(09) VALUE 'MAR�O'    .
           02 FILLER PIC X(09) VALUE 'ABRIL'    .
           02 FILLER PIC X(09) VALUE 'MAIO'     .
           02 FILLER PIC X(09) VALUE 'JUNHO'    .
           02 FILLER PIC X(09) VALUE 'JULHO'    .
           02 FILLER PIC X(09) VALUE 'AGOSTO'   .
           02 FILLER PIC X(09) VALUE 'SETEMBRO' .
           02 FILLER PIC X(09) VALUE 'OUTUBRO'  .
           02 FILLER PIC X(09) VALUE 'NOVEMBRO' .
           02 FILLER PIC X(09) VALUE 'DEZEMBRO' . 
       01 WRK-MESES REDEFINES WRK-MESES-EXTENSO.
           02 WRK-MES PIC X(09) OCCURS 12 TIMES.
       01 WRK-DATA.
           02 WRK-ANOSYS  PIC 9(04) VALUE ZEROS.
           02 WRK-MESSYS  PIC 9(02) VALUE ZEROS.
           02 WRK-DIASYS  PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT WRK-DATA FROM DATE YYYYMMDD.
           DISPLAY WRK-DIASYS ' DE ' WRK-MES(WRK-MESSYS) ' DE ' 
                   WRK-ANOSYS. 
           STOP RUN.