*** Settings ***
Library    SeleniumLibrary

Resource    ../Utils/variables.robot
Resource    ../Utils/testdata.robot
Resource    ../Utils/browser_settings.robot

*** Keywords ***
Validate user cart header
    [Documentation]    #Check if page is in "You Cart"
    [Arguments]    ${cart_expected_header}
    Wait Until Page Contains Element    ${user_cart}    timeout=30s
    ${actual_text}=    Get Text    ${user_cart}
    Should Be Equal As Strings    ${actual_text}    ${cart_expected_header}

Click checkout button
    Click Element    ${checkout_button}

