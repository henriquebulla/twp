*** Settings ***
Resource        ../Resources/resource.robot

Test Setup      Abrir a aplicação
Test Teardown   Fechar aplicação


*** Test Case ***
Deve logar com sucesso
    Acessar o menu principal
    Acessar o Menu Lateral
    Acessar a tela   FORMS
    Click Text       LOGIN
    Wait Until Page Contains    Fala QA, vamos testar o login?
    Input Text      id=io.qaninja.android.twp:id/etEmail        eu@papito.io
    Input Text      id=io.qaninja.android.twp:id/etPassword     qaninja
    Click Element   id=io.qaninja.android.twp:id/btnSubmit

    Wait Until Page Contains    Show! Suas credenciais são validas.
