*** Settings ***
Resource         ../template/login_template.robot
Suite Setup       Abrir navegador
Suite Teardown    Fechar navegador
Test Template     Login inválido

*** Test Cases ***                                 login       password    message
Login inválido - Usuário e/ou senha incorretos!    user        admin       Usuário e/ou senha incorretos!
Login inválido - Informe usuário e senha!          ${EMPTY}    ${EMPTY}    Informe usuário e senha!
Login inválido - Informe o usuário!                ${EMPTY}    admin       Informe o usuário!
Login inválido - Informe a senha!                  admin       ${EMPTY}    Informe a senha!