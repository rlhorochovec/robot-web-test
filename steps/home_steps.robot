*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${home}       xpath = /html/body/header[2]/div/div/div/h1

*** Keywords ***
Então apresentará a home do "${logged}"
    ${logado}    Get Text    ${home}
    Should Be Equal As Strings    ${logado}    ${logged}
    Capture Page Screenshot
    Close Browser