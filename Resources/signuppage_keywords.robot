*** Settings ***
Documentation                       Sign up page
Library                             SeleniumLibrary
Variables                           ../Resources/header_locator.yaml
Variables                           ../Resources/signup_locator.yaml

*** Keywords ***
Open Browser Chrome
    Open Browser                    browser=chrome
    Maximize Browser Window

Go to demoblaze page
    Go To                           https://www.demoblaze.com/index.html

Navigate to sign up menu
    Click Element                   ${button_signup}
    Sleep                           3s
    Wait Until Element Is Visible   //h5[@class="modal-title" and contains(text(),"Sign up")]

Inputting Username
    [Arguments]                     ${user}
    Input Text                      ${input_user}                                       ${user}

Inputting Password
    [Arguments]                     ${pswd}
    Input Text                      ${input_pswd}                                       ${pswd}

Click button Sign up
    Click Element                   ${ok_signup}

Appear allert This user already exist
    Alert Should Be Present         This user already exist.                            ACCEPT

Appear allert Please fill out Username and Password
    Alert Should Be Present         Please fill out Username and Password.              ACCEPT

Verify sign up success
    Alert Should Be Present         Sign up successful.                                 ACCEPT