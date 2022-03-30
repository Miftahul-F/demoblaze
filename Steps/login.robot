*** Settings ***
Documentation                               Log in Page
Resource                                    ../Resources/loginpage_keyword.robot
Suite Setup                                 Open Browser Chrome
Suite Teardown                              Close Browser

*** Variables ***
&{username}        validUser=kcs1234            invalidUser=kcs123
&{password}        validPass=kcs1234            invalidPass=kcs123

*** Test Cases ***
I am log in using blank username and password
    [Tags]                                  Negative Test1 Log in
    Go to demoblaze page
    Navigate to log in menu
    Click button log in
    Appear allert Please fill out Username and Password

I am log in using invalid username and valid password
    [Tags]                                  Negative Test2 Log in
    Go to demoblaze page
    Navigate to log in menu
    Inputting Username                      ${username.invalidUser}
    Inputting Password                      ${password.validPass}
    Click button log in
    Appear allert User does not exist

I am log in using valid username and invalid password
    [Tags]                                  Negative Test3 Log in
    Go to demoblaze page
    Navigate to log in menu
    Inputting Username                      ${username.validUser}
    Inputting Password                      ${password.invalidPass}
    Click button log in
    Appear allert Wrong password

I am log in using valid username and password
    [Tags]                                  Positive Test Log in
    Go to demoblaze page
    Navigate to log in menu
    Inputting Username                      ${username.validUser}
    Inputting Password                      ${password.validPass}
    Click button log in
    Verify log in success

The user loged out successfully and log in links appeared
    Login success
    CLick button log out
    Verify log out success
