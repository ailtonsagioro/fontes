      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGRAMA01.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
               01 NOME_ALUNO  PIC X(15)  .
               01 N1    PIC 9(02) VALUE ZEROS.
               01 N2    PIC 9(02) VALUE ZEROS.
               01 N3    PIC 9(02) VALUE ZEROS.
               01 N4    PIC 9(02) VALUE ZEROS.
               01 MEDIA PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "inicio do program".
            PERFORM 001-CALCULA-NOTA.
            MOVE "JEFERSON .S" TO NOME_ALUNO.
            DISPLAY "A MEDIA DO " NOME_ALUNO "FOI " MEDIA.
            IF MEDIA >= 7
               DISPLAY " **** ALUNO " NOME_ALUNO "PASSOU DE ANO ****"
            ELSE
               DISPLAY " **** ALUNO " NOME_ALUNO "REPROVADO ****"
            END-IF.
            STOP RUN.


       001-CALCULA-NOTA.
            MOVE 4  TO N1.
            MOVE 3 TO N2.
            MOVE 2  TO N3.
            MOVE 1  TO N4.
            COMPUTE MEDIA = ( N1 + N2 + N3 + N4 ) / 4.
            DISPLAY N1  " "  N2 " "  N3  " "  N4 " " MEDIA.

       999-CALCULA-NOTAX. EXIT.


       END PROGRAM PROGRAMA01.
