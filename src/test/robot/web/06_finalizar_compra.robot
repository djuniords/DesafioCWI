*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser    https://demoblaze.com/    chrome
Suite Teardown    Close Browser

*** Test Cases ***
Finalizar compra com sucesso
    Set Selenium Timeout    10s
    Wait Until Element Is Visible    xpath=//*[@id="tbodyid"]/div[3]/div/div/h4/a
    Click Link    xpath=//*[@id="tbodyid"]/div[3]/div/div/h4/a
    Wait Until Element Is Visible    xpath=//*[@id="tbodyid"]/div[2]/div/a
    Click Element    xpath=//*[@id="tbodyid"]/div[2]/div/a
    Alert Should Be Present    timeout=5s
    Set Selenium Timeout    10s
    Click Link    Cart
    Wait Until Element Is Visible    xpath=//button[text()='Place Order']
    Click Button    xpath=//button[text()='Place Order']
    Wait Until Element Is Visible    id=name
    Input Text    id=name    Darcy Junior
    Input Text    id=country    Brasil
    Input Text    id=city    São Paulo
    Input Text    id=card    123456789
    Input Text    id=month    12
    Input Text    id=year    2025
    Click Button    xpath=//button[text()='Purchase']
    Wait Until Page Contains    Thank you for your purchase!    15s
