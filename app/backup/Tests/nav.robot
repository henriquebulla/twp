*** Settings ***
Resource        ../Resources/resource.robot
Test Setup      Abrir a aplicação
Test Teardown   Fechar aplicação

*** Test Case ***
Acessar a tela Dialogs
    Acessar o menu principal
    Acessar o Menu Lateral
    Acessar a tela  DIALOGS

Acessar a tela FORMS
    Acessar o menu principal
    Acessar o Menu Lateral
    Acessar a tela  FORMS