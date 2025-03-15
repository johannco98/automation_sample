*** Variables ***
${website_link}    https://www.saucedemo.com/v1/
${webdriver_1}    Chrome

#Login Screen (Please add Login_screen on the variable name and for other future variables)
${username_txtfield}    //input[@id="user-name"]
${password_txtfield}    //input[@id="password"]
${login_button}    //input[@id="login-button"]

#Dashboard Screen (Same with this. Add Dashboard_screen on the variable names)
#leave the bracket open for index or if you want to select more than 1 item
${add_to_cart}    (//button[@class="btn_primary btn_inventory"])[  
${shopping_cart}    //*[@id="shopping_cart_container"]
${checkout_button}    //*[@id="cart_contents_container"]/div/div[2]/a[2]


${firstname_txtfield}    //input[@id="first-name"]
${lastname_txtfield}    //input[@id="last-name"]
${zipcode_txtfield}    //input[@id="postal-code"]
${checkout_continue_button}    //*[@id="checkout_info_container"]/div/form/div[2]/input
${finish_btn}    //*[@id="checkout_summary_container"]/div/div[2]/div[8]/a[2]

#Validation
${products_page}    //*[@id="inventory_filter_container"]/div
${user_cart}    //*[@id="contents_wrapper"]/div[2]
${checkout_information}    //*[@id="contents_wrapper"]/div[2]
${checkout_overview}    //*[@id="contents_wrapper"]/div[2]
${tnx_msg}    //*[@id="contents_wrapper"]/div[2]