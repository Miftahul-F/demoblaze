*** Settings ***
Documentation                       Log in Page
Library                             SeleniumLibrary
Variables                           ../Resources/header_locator.yaml
Variables                           ../Resources/login_locator.yaml

*** Variables ***
&{username}        validUser=kcs1234            invalidUser=kcs123
&{password}        validPass=kcs1234            invalidPass=kcs123

*** Keywords ***
Open Browser Chrome
    Open Browser                    browser=chrome
    Maximize Browser Window

Go to demoblaze page
    Go To                           https://www.demoblaze.com/index.html

Navigate to log in menu
    Click Element                   ${button_login}
    Wait Until Element Is Visible   //button[@onclick="logIn()"]

Inputting Username
    [Arguments]                     ${username}
    Input Text                      ${input_username}                                 ${username}

Inputting Password
    [Arguments]                     ${password}
    Input Text                      ${input_password}                                 ${password}

Click button log in
    Click Element                   ${ok_login}

CLick button log out
    Click Element                   ${button_logout}

Verify log in success
    Wait Until Page Contains Element   ${welcome_username}                           

Appear allert Please fill out Username and Password
    Alert Should Be Present         Please fill out Username and Password.              ACCEPT

Appear allert User does not exist
    Alert Should Be Present         User does not exist.                                ACCEPT

Appear allert Wrong password
    Alert Should Be Present         Wrong password.                                     ACCEPT

Verify log out success
    Wait Until Page Contains Element     ${button_login}

Login success
    Go to demoblaze page
    Navigate to log in menu
    Inputting Username                      ${username.validUser}
    Inputting Password                      ${password.validPass}
    Click button log in
    Wait Until Element Is Visible           ${button_logout}                       
