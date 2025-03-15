*** Settings ***
Library    SeleniumLibrary
Resource    Utils/variables.robot
Resource    Utils/testdata.robot

*** Keywords ***

*** Test Cases ***
Sample run
    Open Browser    ${website_link}    ${webdriver_1}
    Maximize Browser Window
    Input Text    ${username_txtfield}    ${username_data}
    Input Password    ${password_txtfield}    ${password_data}
    Click Button    ${login_button}

    Wait Until Page Contains Element    ${products_page}    timeout=30s
 
# Sample comment (Press [CTRL + /] to comment a line or just add a '#')

    Click Element    ${add_to_cart}   
    Click Element    ${add_to_cart}  
    Click Element    ${add_to_cart}  
    Click Element    ${add_to_cart}  
    Click Element    ${add_to_cart}  
    Click Element    ${add_to_cart}  
    Click Element    ${shopping_cart}

    Wait Until Page Contains Element    ${user_cart}    timeout=30s
    Click Element    ${checkout_button}

    Wait Until Page Contains Element    ${checkout_information}    timeout=30s
    Input Text    ${firstname_txtfield}    ${first_name}
    Input Text    ${lastname_txtfield}    ${last_name}
    Input Text    ${zipcode_txtfield}    ${zip_code}
    Click Element    ${checkout_continue_button}

    Wait Until Page Contains Element    ${checkout_overview}    timeout=30s
    Click Element    ${finish_btn}
    Wait Until Page Contains Element    ${tnx_msg}    timeout=30s
    Sleep    1s
