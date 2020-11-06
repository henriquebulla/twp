*** Settings ***
Library     AppiumLibrary 

*** Keywords ***
Abrir a aplicação
    Set Appium Timeout  5
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android 
    ...                 deviceName=Emulator
    ...                 app=C:\\qaninja\\twp\\app\\backup\\twp.apk   

Fechar aplicação
    Close Application

Acessar o menu principal
    Wait Until Page Contains    	    COMEÇAR
    Click Text                          COMEÇAR
    Wait Until Element Is Visible       xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]      

Acessar o Menu Lateral
    Click Element                      xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/design_navigation_view

Acessar a tela 
    [Arguments]     ${NOME_TELA}
    Click Text                          ${NOME_TELA}
    Wait Until Element Is Visible       id=io.qaninja.android.twp:id/toolbarTitle
    Element Text Should Be              id=io.qaninja.android.twp:id/toolbarTitle       ${NOME_TELA}

Acessar a tela de Radio Button

