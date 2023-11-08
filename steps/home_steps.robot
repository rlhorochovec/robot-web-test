*** Settings ***
Library    SeleniumLibrary

*** Variable ***
${home}       id = h2

*** Keywords ***
Então apresentará a home do "${logged}"
    ${logado}    Get Text    ${home}
    Should Be Equal As Strings    ${logado}    ${logged}
    Capture Page Screenshot
    Close Browser