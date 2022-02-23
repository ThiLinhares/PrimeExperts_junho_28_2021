*** Settings ***
Documentation   testando argumentos e retornos
Library         collections
        
*** Test Cases *** 
Meu teste de soma
    ${resultado_da_soma}        somar dois numeros           1      2
    Log     ${resultado_da_soma}
    ${resultado_da_soma}        somar dois numeros           ${resultado_da_soma}    4
    Log     ${resultado_da_soma}


*** Keywords ***
somar dois numeros
    [Arguments]     ${primeiro_num}     ${segundo_num}  
    ${resultado_da_expressao}   Evaluate    ${primeiro_num}+${segundo_num}
    Log To Console      ${\n}O resultado é: ${resultado_da_expressao}
    [return]    ${resultado_da_expressao} 
       