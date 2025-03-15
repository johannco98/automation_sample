*** Settings ***
Library    SeleniumLibrary

Resource    ../Utils/variables.robot
Resource    ../Utils/testdata.robot
Resource    ../Utils/browser_settings.robot

*** Keywords ***
Validate finish screen header
    [Arguments]    ${finish_expected_header}
    Wait Until Page Contains Element    ${tnx_msg}    timeout=30s
    ${actual_text}    Get Text    ${tnx_msg}
    Should Be Equal As Strings    ${actual_text}    ${finish_expected_header}