*** Settings ***
Resource        ../Resources/resource.robot

Test Setup      Abrir a aplicação
Test Teardown   Fechar aplicação


*** Test Case ***
Verificar se a linguagem está marcada
    Acessar o menu principal
    Acessar o Menu Lateral
    Acessar a tela   INPUTS
    Click Text       BOTÕES DE RADIO
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/rvContainer
    Click Element       xpath=//android.widget.RadioButton[contains(@text,'Python')]
