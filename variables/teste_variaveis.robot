*** Settings ***
Documentation   Meu teste de variaveis

*** Variables ***
${menssagem}    Olá pessoal da Prime, será um prazer fazer parte dessa equipe!

&{PESSOA}    nome=elivelton    email=eliveltonms99@gmail.com    idade=29    sexo=masculino    cabelo=escuro    olhos=escuros 

@{FRUTAS} 

*** Test Cases ***
Meu teste de impressao de mensagem no terminal
    Logar no terminal uma mensagem

*** Keywords ***
Logar no terminal uma mensagem
    Log To Console  ${menssagem}

