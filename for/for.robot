*** Settings ***
Documentation     testando lacos(for) com robot
Library    Collections

*** Test Cases ***
Contando ate 10
    Contar    0    10

*** Keywords ***
Contar
    [Arguments]    ${0}    ${10}
	FOR    ${teste}     IN RANGE      ${0}    ${10}
		Log To Console    ${\n}Estou contando agora o numero: ${teste}
	END
