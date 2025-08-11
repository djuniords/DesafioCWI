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
    ${response}=    DELETE On Session    api    /api/users/2
    Should Be Equal As Numbers    204    ${response.status_code}
