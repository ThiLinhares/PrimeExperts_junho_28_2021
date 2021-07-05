*** Settings ***
Documentation   testando argumentos e retornos
Library    Collections

*** Variable ***


*** Test Cases ***
Teste de soma
    ${resultado_da_soma}    somar dois numeros   986   741
    Log    ${resultado_da_soma}
    # ${resultado_da_soma}    somar dois numeros    ${resultado_da_soma}    4
    # Log    ${resultado_da_soma}

*** Keywords ***
Somar dois numeros
    [Arguments]    ${primeiro_num}    ${segundo_num}
    ${resultado_da_expressao}    Evaluate    ${primeiro_num} + ${segundo_num} 
    Log To Console    ${\n}O resultado é: ${resultado_da_expressao}
    [Return]    ${resultado_da_expressao}