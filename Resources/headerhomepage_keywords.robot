*** Settings ***
Documentation                       Header Page
Library                             SeleniumLibrary
Variables                           ../Resources/locator.yaml

*** Keywords ***
Open Browser Chrome
    Open Browser                    browser=chrome
    Maximize Browser Window

Go to demoblaze page
    Go To                           https://www.demoblaze.com/index.html

Click Button Home
    Click Element                   //*[@id="navbarExample"]/ul/li[1]/a

Click Button Contact
    Click Element                   //*[@id="navbarExample"]/ul/li[2]/a

Click Button About us
    Click Element                   //*[@id="navbarExample"]/ul/li[3]/a

Click Button Cart
    Click Element                   //*[@id="cartur"]

Click Button Log in
    Click Element                   //*[@id="login2"]

Click Button Sign up
    Click Element                   //*[@id="signin2"]

Verify home page 
    Page Should Contain Element     //*[@id="nava"]

Verify button contact
    Wait Until Element Is Visible   //*[@id="exampleModalLabel"]

Verify button about us
    Wait Until Element Is Visible   //*[@id="videoModalLabel"]

Verify button cart
    Page Should Contain Element     //*[@id="page-wrapper"]/div/div[1]/h2

Verify button log in
    Wait Until Element Is Visible   //*[@id="logInModalLabel"]

Verify button sign up
    Wait Until Element Is Visible   //*[@id="signInModalLabel"]