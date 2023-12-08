*** Settings ***
Resource         ../steps/login_steps.robot
Resource         ../steps/home_steps.robot

*** Test Cases ***
Cenário: Login - Usuário e/ou senha incorretos!
    [Tags]    @Incorretos
    Dado que desejo acessar o sistema
    Quando inserir o login "user" e a senha "admin" e clicar em Entrar
    Então apresentará uma mensagem de "Usuário e/ou senha incorretos!"

Cenário: Login - Informe usuário e senha!
    [Tags]    @EmBranco
    Dado que desejo acessar o sistema
    Quando inserir o login "" e a senha "" e clicar em Entrar
    Então apresentará uma mensagem de "Informe usuário e senha!"

Cenário: Login - Informe o usuário!
    [Tags]    @SemUsuário
    Dado que desejo acessar o sistema
    Quando inserir o login "" e a senha "admin" e clicar em Entrar
    Então apresentará uma mensagem de "Informe o usuário!"

Cenário: Login - Informe a senha!
    [Tags]    @SemSenha
    Dado que desejo acessar o sistema
    Quando inserir o login "user" e a senha "" e clicar em Entrar
    Então apresentará uma mensagem de "Informe a senha!"

Cenário: Login - Admin
    [Tags]    @Admin
    Dado que desejo acessar o sistema
    Quando inserir o login "admin" e a senha "admin" e clicar em Entrar
    Então apresentará a home do "Administrador"

Cenário: Login - User
    [Tags]    @User
    Dado que desejo acessar o sistema
    Quando inserir o login "user" e a senha "user" e clicar em Entrar
    Então apresentará a home do "Usuário"
