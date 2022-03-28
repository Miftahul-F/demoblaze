*** Settings ***
Documentation                       Sign up page
Library                             SeleniumLibrary
Variables                           ../Resources/locator.yaml

*** Keywords ***
Open Browser Chrome
    Open Browser                    browser=chrome
    Maximize Browser Window

Go to demoblaze page
    Go To                           https://www.demoblaze.com/index.html

Click button Sign up on Home page
    Click Element                   //*[@id="signin2"]

Wait pop up sign up
    Wait Until Element Is Visible  //*[@id="signInModalLabel"]

I am inputting any Username
    [Arguments]                     ${username}
    Input Text                      //input[@id="sign-username"]                        ${username}

I am inputting any Password
    [Arguments]                     ${password}
    Input Text                      //input[@id="sign-password"]                        ${password}

Click button Sign up
    Click Element                   //*[@id="signInModal"]/div/div/div[3]/button[2]

Click Ok
    Handle Alert

