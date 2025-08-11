*** Settings ***
Library    RequestsLibrary


*** Variables ***
${BASE_URL}    https://reqres.in
${API_KEY}    reqres-free-v1

*** Test Cases ***
Autenticação incorreta sem envio de parâmetro
    Evaluate    __import__('urllib3').disable_warnings(__import__('urllib3').exceptions.InsecureRequestWarning)
    &{headers}=    Create Dictionary    x-api-key=${API_KEY}
    Create Session    api    ${BASE_URL}    headers=${headers}    verify=False
    ${body}=    Create Dictionary
    ${response}=    POST On Session    api    /api/login    json=${body}    expected_status=400

    Log To Console    Status: ${response.status_code}
    Log To Console    Body: ${response.text}

    Should Be Equal As Numbers    ${response.status_code}    400
