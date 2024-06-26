*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}          https://rlhorochovec.github.io/qa/index.html
${usuario}      id = login 
${senha}        id = senha
${entrar}       xpath = //*[text()="Entrar"]
${mensagem}     id = erro

*** Keywords ***
Dado que desejo acessar o sistema
    Open Browser       ${url}    ${browser}
    Maximize Browser Window
    Title Should Be    Login

Quando inserir o login "${login}" e a senha "${password}" e clicar em Entrar
    Input Text       ${usuario}    ${login}
    Input Text       ${senha}      ${password}
    Click Element    ${entrar}
    
Então apresentará uma mensagem de "${message}"
    ${erro}    Get Text    ${mensagem}
    Should Be Equal As Strings    ${erro}    ${message}
    Close Browser