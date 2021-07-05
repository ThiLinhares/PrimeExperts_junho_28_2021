*** Settings ***
Suite Setup  
Documentation     testando lacos(for) com robot
Library    Collections
 
*** Test Cases ***
Porta da esperanca
    Eu tenho a porta    3
 
*** Keywords ***
Eu tenho a porta
    [Arguments]             ${depende_da_porta_escolhida}
    Quem manda e o Silvio Santos "${depende_da_porta_escolhida}"      


Quem manda e o Silvio Santos "${porta_escolhida}"
    ${mensagem_vencedora}    Set Variable    Parabéns, você ganhou 1 milhão de reais!
    IF    ${porta_escolhida} == ${1}
        Log To Console    ${mensagem_vencedora}
    ELSE IF    ${porta_escolhida} == ${3}
        Log To Console    ${mensagem_vencedora}
    ELSE
        Log To Console    Nossa, que pena, perdeu tudo...
    END