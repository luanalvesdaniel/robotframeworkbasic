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
    [tags]          login_success
    Go To           ${url}/login
    Input Text      ${username}     stark
    Input Text      ${password}     jarvis!
    Click Element   ${btn_login}
    Page Should Contain             Olá, Tony Stark. Você acessou a área logada!

Senha Invalida
    [tags]                  login_error
    Go To                   ${url}/login
    Input Text              ${username}             stark
    Input Text              ${password}             123
    Click Element           ${btn_login}
    ${message}=             Get WebElement          id:flash
    Should Contain          ${message.text}         Senha é invalida!

Usuario nao existe
    [tags]                  login_error
    Go To                   ${url}/login
    Input Text              ${username}             luan
    Input Text              ${password}             123
    Click Element           ${btn_login}
    ${message}=             Get WebElement          id:flash
    Should Contain          ${message.text}         O usuário informado não está cadastrado!