*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser    https://demoblaze.com/    chrome
Suite Teardown    Close Browser

*** Test Cases ***
Adicionar produto no carrinho
    Set Selenium Timeout    10s
    Wait Until Element Is Visible    xpath=//*[@id="tbodyid"]/div[3]/div/div/h4/a
    Click Link    xpath=//*[@id="tbodyid"]/div[3]/div/div/h4/a
    Wait Until Element Is Visible    xpath=//*[@id="tbodyid"]/div[2]/div/a
    Click Element    xpath=//*[@id="tbodyid"]/div[2]/div/a
    Alert Should Be Present    timeout=5s
