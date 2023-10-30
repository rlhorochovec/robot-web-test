*** Settings ***
Resource         steps/login_steps.robot
Suite Teardown   Fechar Navegador

*** Test Cases ***
Cenário: Login - Usuário e/ou senha incorretos!
    [Tags]    @Teste
    Dado que desejo acessar o sistema
    Quando inserir o login "user" e a senha "admin" e clicar em Entrar
    Então apresentará uma mensagem de "Usuário e/ou senha incorretos!"