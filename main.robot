*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    file=C:/Users/Johann/Desktop/Autiomation Testing/Test_Data.xlsx    sheet_name=Sheet1

Resource    Utils/variables.robot
Resource    Utils/testdata.robot
Resource    Screens/login_screen_keywords.robot
Resource    Screens/browser.robot
Resource    Screens/dashboard_screen_keywords.robot
Resource    Screens/user_cart_screen_keywords.robot
Resource    Screens/checkout_information_screen_keywords.robot
Resource    Screens/checkout_overview_sceen_keywords.robot
Resource    Screens/finish_screen_keywords.robot

#Determines na kumukuha tayo ng data sa excel
Test Template    ExcelData

#Sample test for branch change

*** Test Cases ***
Test sample run    ${username}    ${password}    
...    ${first_name}	${last_name}	${zip_code}    
...    ${add_to_cart_index}    ${product_page_expected_header}    
...    ${cart_expected_header}    ${checkout_info_expected_header}	
...	${checkout_overview_expected_header}	${finish_expected_header}    
    
*** Keywords ***
ExcelData   [Arguments]    ${username}	${password}    
...    ${first_name}	${last_name}	${zip_code}    
...    ${add_to_cart_index}    ${product_page_expected_header}    
...    ${cart_expected_header}    ${checkout_info_expected_header}	
...	${checkout_overview_expected_header}	${finish_expected_header}

#Login Screen
    Begin webtest
    Validate username textfield
    Validate password textfield
    Input username in username textfield    ${username}
    Input password in password textfield    ${password}
    Click login button

#Dashboard (shopping screen)
    Validate dashboard header    ${product_page_expected_header}
    Click to add item to cart    ${add_to_cart_index}
    Click to add item to cart    ${add_to_cart_index}
    Click to add item to cart    ${add_to_cart_index}
    Click to add item to cart    ${add_to_cart_index}
    Click to add item to cart    ${add_to_cart_index}
    Click to add item to cart    ${add_to_cart_index}
    Click shopping cart

#User's Cart
    Validate user cart header    ${cart_expected_header}
    Click checkout button
    
#Checkout information screen
    Validate checkout information header    ${checkout_info_expected_header}
    Validate first name textfield
    Validate last name textfield
    Validate zip codetextfield
    Input first name in first name textfield    ${first_name}
    Input last name in last name textfield    ${last_name}
    Input zip code in zip code textfield    ${zip_code}
    Click continue button in checkout screen

#Checkout overview screen
    Validate checkout overview header    ${checkout_overview_expected_header}
    Click finish button in overview screen

#Finish screen
    Validate finish screen header    ${finish_expected_header}
    Sleep    1s



    