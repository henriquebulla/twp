*** Settings ***

Library     AppiumLibrary 

#  "automationName": "UiAutomator2",
#  "platformName": "Android",
#  "deviceName": "Emulator",
#  "app": "C:\\qaninja\\twp\\app\\twp.apk",
#  "udid": "emulator-5554"



*** Test Case ***
Deve abrir a tela principal
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android 
    ...                 deviceName=Emulator
    ...                 app=C:\\qaninja\\twp\\app\\backup\\twp.apk   
    
    
    ## Quando achar um string quebrada utilize a verificação duas vezes
    ##  Training Wheels Protocol Mobile Version como está abaixo
    Wait Until Page Contains    	Training Wheels Protocol 
    Wait Until Page Contains        Mobile Version
    Close Application