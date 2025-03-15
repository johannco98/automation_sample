*** Settings ***
Library    SeleniumLibrary
Resource    ../Utils/browser_settings.robot

*** Keywords ***
Begin webtest
    Open Browser    ${website_link}    ${webdriver_1}