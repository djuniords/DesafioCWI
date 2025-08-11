*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser    https://demoblaze.com/    chrome
Suite Teardown    Close Browser

*** Variables ***
${USERNAME}    user_darcy19
${PASSWORD}    senha123

*** Test Cases ***
Login com sucesso
    Set Selenium Timeout    10s
    Wait Until Element Is Visible    id=login2
    Click Element    id=login2
    Wait Until Element Is Visible    id=loginusername
    Input Text    id=loginusername    ${USERNAME}
    Input Text    id=loginpassword    ${PASSWORD}
    Click Button    xpath=//button[text()='Log in']
    Wait Until Page Contains  Log out    timeout=10s
