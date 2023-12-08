*** Settings ***
Resource         ../template/login_template.robot
Suite Setup       Abrir navegador
Suite Teardown    Fechar navegador
Test Template     Login válido

*** Test Cases ***      login       password   logged
Login válido - Admin    admin       admin      Administrador
Login válido - User     user        user       Usuário