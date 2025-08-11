*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser    https://demoblaze.com/    chrome
Suite Teardown    Close Browser

*** Test Cases ***
Busca de produto
    Set Selenium Timeout    10s
    Wait Until Element Is Visible    id=navbarExample
    Click Element    xpath=//a[text()='Laptops']
    Wait Until Page Contains Element     xpath=//a[contains(text(),'MacBook')]    10s
