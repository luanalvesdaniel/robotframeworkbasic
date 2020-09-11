*** Settings ***
Resource            base.robot

Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Variables ***
${username}         css:input[name=username]
${password}         css:input[name=password]
${btn_login}        class:btn-login

*** Test Cases ***
Login com sucesso
    Go To           ${url}/login
    Input Text      ${username}     stark
    Input Text      ${password}     jarvis!
    Click Element   ${btn_login}
    Page Should Contain     Olá, Tony Stark. Você acessou a área logada!