*** Settings ***
Documentation                       Log in Page
Library                             SeleniumLibrary
Variables                           ../Resources/locator.yaml

*** Keywords ***
Open Browser Chrome
    Open Browser                    browser=chrome
    Maximize Browser Window

Go to demoblaze page
    Go To                           https://www.demoblaze.com/index.html

Click button Log in on Home page
    Click Element                   //*[@id="login2"]

Wait pop up log in
    Wait Until Element Is Visible  //*[@id="logInModalLabel"]

I am inputting valid Username
    [Arguments]                     ${username}
    Input Text                      //input[@id="loginusername"]                        ${username}

I am inputting valid Password
    [Arguments]                     ${password}
    Input Text                      //input[@id="loginpassword"]                       ${password}

I am inputting invalid Username
    [Arguments]                     ${username}
    Input text                      //input[@id="loginusername"]                        ${username}

I am inputting invalid Password
    [Arguments]                     ${password}
    Input text                      //input[@id="loginpassword"]                       ${password}

Click button log in
    Click Element                   //*[@id="logInModal"]/div/div/div[3]/button[2]

CLick button log out
    Click Element                   //*[@id="logout2"]

Verify log in success
    Wait Until Page Contains Element    //*[@id="nameofuser"]                            

Appear allert Please fill out Username and Password
    Alert Should Be Present         Please fill out Username and Password.              ACCEPT

Appear allert User does not exist
    Alert Should Be Present         User does not exist.                                ACCEPT

Appear allert Wrong password
    Alert Should Be Present         Wrong password.                                     ACCEPT

Verify log out success
    Wait Until Page Contains Element    //*[@id="login2"]

Log in success
    Go to demoblaze page
    Click button Log in on Home page
    Wait pop up log in
    Sleep                                   2s
    I am inputting valid Username           username=kcs1234
    I am inputting valid Password           password=kcs1234
    Click button log in
    Verify log in success
    Sleep                                   3s