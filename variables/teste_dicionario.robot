*** Settings ***
Documentation   Exemplo de tipos de variáveis: SIMPLES, LISTAS e DICIONÁRIOS

*** Variable ***
#Tipo Dicionário
&{PESSOA}    nome=Elivelton Matos   email=eliveltonms99@gmail.com   idade=29   sexo=masculino    pele=parda    olhos=escuros

*** Test Cases ***
Caso de teste de nome 01
    Nome 01

*** Keywords ***
Nome 01

    #Dicionário
    Log    Nome: ${PESSOA.nome} e email: ${PESSOA.email} e idade: ${PESSOA.idade} e sexo: ${PESSOA.sexo} e pele: ${PESSOA.pele} e olhos: ${PESSOA.olhos}

