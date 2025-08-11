*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser    https://demoblaze.com/    chrome
Suite Teardown    Close Browser

*** Variables ***
${USERNAME}    user_darcy19
${PASSWORD}    senha123

*** Test Cases ***
Cadastro de novo usuário
    Set Selenium Timeout    10s
    Wait Until Element Is Visible    id=signin2
    Click Element    id=signin2
    Wait Until Element Is Visible    id=sign-username
    Input Text    id=sign-username    ${USERNAME}
    Input Text    id=sign-password    ${PASSWORD}
    Click Button    xpath=//button[text()='Sign up']
    Click Button    xpath=//button[text()='Sign up']
