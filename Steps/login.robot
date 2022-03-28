*** Settings ***
Documentation                               Log in Page
Resource                                    ../Resources/loginpage_keyword.robot
Suite Setup                                 Open Browser Chrome
Suite Teardown                              Close Browser

*** Test Cases ***
I am log in using blank username and password
    [Tags]                                  Negative Test1 Log in
    Go to demoblaze page
    Click button Log in on Home page
    Wait pop up log in
    Click button log in
    Appear allert Please fill out Username and Password
    Sleep                                   2s

I am log in using invalid username and valid password
    [Tags]                                  Negative Test2 Log in
    Go to demoblaze page
    Click button Log in on Home page
    Wait pop up log in
    I am inputting invalid Username         username=kcs123
    I am inputting valid Password           password=kcs1234
    Click button log in
    Appear allert User does not exist
    Sleep                                   2s

I am log in using valid username and invalid password
    [Tags]                                  Negative Test3 Log in
    Go to demoblaze page
    Click button Log in on Home page
    Wait pop up log in
    I am inputting invalid Username         username=kcs1234
    I am inputting valid Password           password=kcs123
    Click button log in
    Appear allert Wrong password
    Sleep                                   2s

I am log in using valid username and password
    [Tags]                                  Positive Test Log in
    Go to demoblaze page
    Click button Log in on Home page
    Wait pop up log in
    I am inputting valid Username           username=kcs1234
    I am inputting valid Password           password=kcs1234
    Click button log in
    Verify log in success
    Sleep                                   2s

The user loged out successfully and log in links appeared
    Log in success
    CLick button log out
    Verify log out success
