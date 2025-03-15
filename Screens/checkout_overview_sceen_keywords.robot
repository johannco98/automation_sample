*** Settings ***
Library    SeleniumLibrary

Resource    ../Utils/variables.robot
Resource    ../Utils/testdata.robot
Resource    ../Utils/browser_settings.robot

*** Keywords ***
Validate checkout overview header
    [Arguments]    ${checkout_overview_expected_header}
    Wait Until Page Contains Element    ${checkout_overview}    timeout=30s
    ${actual_text}=    Get Text    ${checkout_overview}
    Should Be Equal As Strings    ${actual_text}    ${checkout_overview_expected_header}

Click finish button in overview screen
    Click Element    ${finish_btn}
