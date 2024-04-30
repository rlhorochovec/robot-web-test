*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          https://rlhorochovec.github.io/qa/index.html
${usuario}      id = login 
${senha}        id = senha
${entrar}       xpath = //*[text()="Entrar"]
${mensagem}     id = erro
${home}         id = h2

*** Keywords ***
Login inválido
    [Arguments]                   ${login}      ${password}    ${message}
    Input Text                    ${usuario}    ${login}
    Input Text                    ${senha}      ${password}
    Click Element                 ${entrar}
    ${erro}    Get Text           ${mensagem}
    Should Be Equal As Strings    ${erro}       ${message}

Login válido
    [Arguments]                   ${login}      ${password}    ${logged}
    Input Text                    ${usuario}    ${login}
    Input Text                    ${senha}      ${password}
    Click Element                 ${entrar}
    ${logado}    Get Text         ${home}
    Should Be Equal As Strings    ${logado}    ${logged}
    Capture Page Screenshot

Abrir navegador
    Open Browser               ${url}    ${browser}
    Title Should Be            Login
    Maximize Browser Window

Fechar navegador
    Close Browser