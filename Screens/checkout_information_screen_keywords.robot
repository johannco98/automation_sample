*** Settings ***
Library    SeleniumLibrary

Resource    ../Utils/variables.robot
Resource    ../Utils/testdata.robot
Resource    ../Utils/browser_settings.robot

*** Keywords ***
Validate checkout information header
    [Arguments]    ${checkout_info_expected_header}
    Wait Until Page Contains Element    ${checkout_information}    timeout=30s
    ${actual_text}=    Get Text    ${checkout_information}
    Should Be Equal As Strings    ${actual_text}    ${checkout_info_expected_header}

Validate first name textfield
    Wait Until Page Contains Element    ${firstname_txtfield}    timeout=30s

Validate last name textfield
    Wait Until Page Contains Element    ${lastname_txtfield}    timeout=30s

Validate zip codetextfield
    Wait Until Page Contains Element    ${zipcode_txtfield}

Input first name in first name textfield
    [Arguments]    ${first_name}
    Input Text    ${firstname_txtfield}    ${first_name}

Input last name in last name textfield
    [Arguments]    ${last_name}
    Input Text    ${lastname_txtfield}    ${last_name}

Input zip code in zip code textfield
    [Arguments]    ${zip_code}
    Input Text    ${zipcode_txtfield}    ${zip_code}

Click continue button in checkout screen
    Click Element    ${checkout_continue_button}
