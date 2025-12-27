       IDENTIFICATION DIVISION.
       PROGRAM-ID. IMC.
       AUTHOR RAFAEL.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
           
       01 WS-IMC PIC ZZ.99.
       01 WS-PESO PIC 9(3)V99.
       01 WS-ALTURA PIC 9V99.

       PROCEDURE DIVISION.
           PERFORM CALCULAR.

           STOP RUN.

       CALCULAR.
           DISPLAY "Digite seu peso exemplo 79.12 : "
           WITH NO ADVANCING.
           ACCEPT WS-PESO.
           DISPLAY "Digite sua altura exemplo 1.89 : "
           WITH NO ADVANCING.
           ACCEPT WS-ALTURA.

           COMPUTE WS-IMC = WS-PESO / (WS-ALTURA * WS-ALTURA).
           IF WS-IMC LESS THAN 18.5
               DISPLAY "Seu IMC é: " WS-IMC " - Abaixo do peso"

           ELSE IF WS-IMC GREATER THAN OR EQUAL TO 18.5
               AND WS-IMC LESS THAN 25
               DISPLAY "Seu IMC é: " WS-IMC " - Parabéns, peso normal"

           ELSE IF WS-IMC GREATER THAN OR EQUAL TO 25
               AND WS-IMC LESS THAN 30
               DISPLAY "Seu IMC é: " WS-IMC " - Cuidado: sobrepeso"

           ELSE
               DISPLAY "Seu IMC é: " WS-IMC " - Obesidade !!!"
           END-IF.
  