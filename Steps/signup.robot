*** Settings ***
Documentation                               Sign up page
Library                                     FakerLibrary
Resource                                    ../Resources/signuppage_keywords.robot
Suite Setup                                 Open Browser Chrome
Suite Teardown                              Close Browser

*** Variables ***
&{user}                                     registered_user=kcs1234
&{pswd}                                     registered_pswd=kcs1234

*** Test Cases ***
I am sign up account without insert username and password
    [Tags]                                  Negative Test1 Sign up
    Go to demoblaze page
    Navigate to sign up menu
    Click button Sign up
    Appear allert Please fill out Username and Password

I am sign up account using registered username and password
    [Tags]                                  Negative Test2 Sign up
    Go to demoblaze page
    Navigate to sign up menu
    Inputting Username                      ${user.registered_user}
    Inputting Password                      ${pswd.registered_pswd}
    Click button Sign up
    Appear allert This user already exist

I am sign up account using unregistered username
    [Tags]                                  Positive Test Sign up
    ${user}                                 FakerLibrary.username
    Go to demoblaze page
    Navigate to sign up menu
    Inputting Username                      ${user}
    Inputting Password                      ${pswd.registered_pswd}
    Click button Sign up
    Verify sign up success

