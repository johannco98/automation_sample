*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Sample run
    Open Browser    https://www.saucedemo.com/v1/    Chrome
    Maximize Browser Window
    Input Text    //input[@id="user-name"]    standard_user
    Input Password    //input[@id="password"]    secret_sauce
    Click Button    //input[@id="login-button"]   
    
    Wait Until Page Contains Element    //div[@id="inventory_filter_container"]/div
    Click Element    //*[@id="inventory_container"]/div/div[1]/div[3]/button
    Click Element    //*[@id="shopping_cart_container"]/a/span
    Click Element    //*[@id="cart_contents_container"]/div/div[2]/a[2]

    Input Text    //input[@id="first-name"]    Juan
    Input Text    //input[@id="last-name"]    Tamad
    Input Text    //input[@id="postal-code"]    11111
    
    Click Element    //*[@id="checkout_info_container"]/div/form/div[2]/input
    Click Element    //*[@id="checkout_summary_container"]/div/div[2]/div[8]/a[2]

    Wait Until Page Contains    THANK YOU FOR YOUR ORDER
    Sleep    5s






