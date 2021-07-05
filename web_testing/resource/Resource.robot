*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***
${BROWSER}      chrome
${URL}          http://automationpractice.com

*** Keywords ***
#### Setup e Teardown
Abrir navegador
    Open Browser    ${URL}   ${BROWSER}

Fechar navegador
    Close Browser

#### Ações
Acessar a página home do site
    Wait Until Element Is Visible    xpath=//*[@id="block_top_menu"]/ul
    Title Should Be     My Store

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text          name=search_query    ${PRODUTO}

Clicar no botão pesquisar
    Click Element       name=submit_search

Passar o mouse por cima da categoria "${CATEGORIA}" no menu principal superior de categorias
    Wait Until Element Is Visible   xpath=//*[@id="block_top_menu"]//a[@title="${CATEGORIA}"]
    Mouse Over                      xpath=//*[@id="block_top_menu"]//a[@title="${CATEGORIA}"]

Clicar na sub categoria "${SUBCATEGORIA}"
    Wait Until Element Is Visible   xpath=//*[@id="block_top_menu"]//a[@title="${SUBCATEGORIA}"]
    Click Element                   xpath=//*[@id="block_top_menu"]//a[@title="${SUBCATEGORIA}"]


Clicar em "Sign in"
    Click Element    xpath=//*[@id="header"]//*[@class="login"][contains(text(),"Sign in")]

Informar um e-mail válido
    Wait Until Element Is Visible   id=email_create
    ${EMAIL}                        Generate Random String
    Input Text                      id=email_create    ${EMAIL}@teste.com

Clicar em "Create an account"
    Click Button    id=SubmitCreate

Preencher os dados obrigatórios
    Wait Until Element Is Visible   xpath=//*[@id="account-creation_form"]//h3[contains(text(),"Your personal information")]
    Click Element                   id=id_gender1
    Input Text                      id=customer_firstname    Thiago
    Input Text                      id=customer_lastname     Linhares
    Input Text                      id=passwd                123456
    Input Text                      id=address1              Rua dos Bobos, Tangamandapio
    Input Text                      id=city                  Fortaleza
    Set Focus To Element            id=id_state
    Select From List By Index       id=id_state              25
    Input Text                      id=postcode              99999
    Input Text                      id=phone_mobile          99988877
    
Submeter cadastro
    Click Button    submitAccount

#### Conferências
Conferir se o cadastro foi efetuado com sucesso
    Wait Until Element Is Visible    xpath=//*[@id="center_column"]/p
    Element Text Should Be           xpath=//*[@id="center_column"]/p
    ...    Welcome to your account. Here you can manage all of your personal information and orders.
    Element Text Should Be           xpath=//*[@id="header"]/div[2]//div[1]/a/span    Thiago Linhares

Conferir se o produto "${PRODUTO}" foi listado no site
    Wait Until Element Is Visible   css=#center_column > h1
    Title Should Be                 Search - My Store
    Page Should Contain Image       xpath=//*[@id="center_column"]//*[@src='${URL}/img/p/7/7-home_default.jpg']
    Page Should Contain Link        xpath=//*[@id="center_column"]//a[@class="product-name"][contains(text(),"${PRODUTO}")]

Conferir mensagem "${MENSAGEM_ALERTA}"
    Wait Until Element Is Visible   xpath=//*[@id="center_column"]/p[@class='alert alert-warning']
    Element Text Should Be          xpath=//*[@id="center_column"]/p[@class='alert alert-warning']    ${MENSAGEM_ALERTA}

Conferir se os produtos da sub-categoria "${SUBCATEGORIA}" foram mostrados na página
    Page Should Contain Element    xpath=//*[@id="center_column"]/h1/span[contains(text(),"Summer Dresses")]
    Page Should Contain Element    xpath=//*[@id="center_column"]/ul/li[1]/div/div[2]/h5/a[@title="Printed Summer Dress"]
    Page Should Contain Element    xpath=//*[@id="center_column"]/ul/li[2]/div/div[2]/h5/a[@title="Printed Summer Dress"]
    Page Should Contain Element    xpath=//*[@id="center_column"]/ul/li[3]/div/div[2]/h5/a[@title="Printed Chiffon Dress"]

