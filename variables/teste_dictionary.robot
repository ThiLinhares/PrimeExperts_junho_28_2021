*** Settings ***
Documentation    Tipo Dictionary
Library    Collections

*** Variables ***
${NOME}        Elivelton Matos
${IDADE}       29
${CIDADE}      Fortaleza
${ESTADO}      Ceara
${SEXO}        Masculino
${ESPORTE}     Futebol

*** Test Cases ***
Meu teste de impressao nome
    Meu NOME:

Meu teste de impressao idade
    Minha IDADE:

Meu teste de impressao cidade
    Minha CIDADE:

Meu teste de impressao estado
    Meu ESTADO:

Meu teste de impressao sexo
    Meu SEXO:

Meu teste de impressao esporte
    Meu ESPORTE:

*** Keywords ***
Meu NOME:
    Log To Console    ${NOME}

Minha IDADE:
    Log To Console    ${IDADE}

Minha CIDADE:
    Log To Console    ${CIDADE}

Meu ESTADO:
    Log To Console    ${ESTADO}

Meu SEXO:
    Log To Console    ${SEXO}

Meu ESPORTE:
    Log To Console    ${ESPORTE}

