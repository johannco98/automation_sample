*** Settings ***
Library    SeleniumLibrary

Resource    ../Utils/variables.robot
Resource    ../Utils/testdata.robot
Resource    ../Utils/browser_settings.robot

*** Keywords ***
Validate username textfield
    [Documentation]    #To validate username textfield
    Wait Until Page Contains Element    ${username_txtfield}    timeout=30s

Validate password textfield
    [Documentation]    #To validate username textfield
    Wait Until Page Contains Element    ${password_txtfield}    timeout=30s

Input username in username textfield 
    [Documentation]    #To enter username
    [Arguments]    ${username}
    Input Text    ${username_txtfield}    ${username}

Input password in password textfield
    [Documentation]    #To enter password
    [Arguments]    ${password}
    Input Password    ${password_txtfield}    ${password}

Click login button
    [Documentation]
    Click Element    ${login_button}    
    


