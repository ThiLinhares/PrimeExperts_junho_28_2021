*** Settings ***
Documentation     testando lacos(for) com robot
Library    Collections
 
*** Test Cases ***
Jogo do advinha
    Eu tenho o numero   9
 
*** Keywords ***
Eu tenho o numero
    [Arguments]    ${recebo_valor_do_teste_case}
    Regra do jogo "${recebo_valor_do_teste_case}"

Regra do jogo "${numero_recebido}"
    ${mensagem_vencedora}       Set Variable       voce ganhou o jogo
    IF      ${numero_recebido} == ${5}
        Log To Console  ${mensagem_vencedora}
    ELSE IF     ${numero_recebido} == ${8}
        Log To Console  ${mensagem_vencedora}
    ELSE  
        Log To Console  voce perdeu
    END
