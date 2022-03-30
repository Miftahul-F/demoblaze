*** Settings ***
Documentation                       Header Page
Library                             SeleniumLibrary
Variables                           ../Resources/header_locator.yaml

*** Keywords ***
Open Browser Chrome
    Open Browser                    browser=chrome
    Maximize Browser Window

Go to demoblaze page
    Go To                           https://www.demoblaze.com/index.html

Click Button Home
    Click Element                   ${button_home}

Click Button Contact
    Click Element                   ${button_contact}

Click Button About us
    Click Element                   ${button_about}

Click Button Cart
    Click Element                   ${button_cart}

Click Button Log in
    Click Element                   ${button_login}

Click Button Sign up
    Click Element                   ${button_signup}

Verify button contact
    Wait Until Element Is Visible   //label[contains(text(),"Email")]

Verify button about us
    Wait Until Element Is Visible   //h5[contains(text(),"About us")]

Verify button cart
    Page Should Contain Element     //*[contains(text(),"Place Order")]

Verify button log in
    Wait Until Element Is Visible   //button[@onclick="logIn()"]

Verify button sign up
    Wait Until Element Is Visible   //button[@onclick="register()"]