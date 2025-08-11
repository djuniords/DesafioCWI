*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser    https://demoblaze.com/    chrome
Suite Teardown    Close Browser

*** Test Cases ***
Remover item do carrinho
    Set Selenium Timeout    10s

    # Abrir produto
    Wait Until Element Is Visible    xpath=//*[@id="tbodyid"]/div[3]/div/div/h4/a
    Click Link    xpath=//*[@id="tbodyid"]/div[3]/div/div/h4/a

    # Adicionar ao carrinho
    Wait Until Element Is Visible    xpath=//*[@id="tbodyid"]/div[2]/div/a
    Click Element    xpath=//*[@id="tbodyid"]/div[2]/div/a
    Click Element    xpath=//*[@id="tbodyid"]/div[2]/div/a

    # Aceitar alerta
    Alert Should Be Present    timeout=5s
    Handle Alert    accept

    # Ir para o carrinho
    Wait Until Element Is Visible    id=cartur
    Click Element    id=cartur

    # Esperar o título "Cart" carregar
    Wait Until Element Is Visible    xpath=//*[@id="page-wrapper"]/div/div[1]/h2

    # Esperar o link "Delete" aparecer antes de clicar
    Wait Until Element Is Visible    xpath=//a[text()="Delete"]
    Click Link    xpath=//a[text()="Delete"]

    # Garantir que o item foi removido
    Wait Until Page Does Not Contain Element    xpath=//*[@id="tbodyid"]/tr[1]/td[2]    timeout=10s

