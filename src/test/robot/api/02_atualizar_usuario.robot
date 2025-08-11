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
    ${body}=    Create Dictionary    name=Darcy    job=QA Lead
    ${response}=    PUT On Session    api    /api/users/2    json=${body}
    Should Be Equal As Numbers    200    ${response.status_code}
