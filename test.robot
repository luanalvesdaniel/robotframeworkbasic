*** Settings ***
Library     app.py

*** Test Cases ***
Deve retornar mensagem de boas vindas
    ${result}=          welcome     Fulano
    Should Be Equal     ${result}   Ola Fulano, bem vindo ao curso basico de Robot Framework!