*** Settings ***
Library    SeleniumLibrary

Resource    ../Utils/variables.robot
Resource    ../Utils/testdata.robot
Resource    ../Utils/browser_settings.robot

*** Keywords ***
Validate dashboard header
    [Documentation]    #To validate dashboard header
    [Arguments]    ${product_page_expected_header}
    Wait Until Page Contains Element    ${products_page}    timeout=30s
    ${actual_text}=    Get Text    ${products_page}   
     Should Be Equal As Strings    ${actual_text}    ${product_page_expected_header}

Click to add item to cart
    [Documentation]    #Click to add an item to cart
    [Arguments]    ${index}
    Click Element    ${add_to_cart}${index}]

Click shopping cart
    [Documentation]    #Click to go to shopping cart
    Click Element    ${shopping_cart}