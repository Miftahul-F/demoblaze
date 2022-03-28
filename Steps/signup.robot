*** Settings ***
Documentation                               Sign up page
Resource                                    ../Resources/signuppage_keywords.robot
Suite Setup                                 Open Browser Chrome
Suite Teardown                              Close Browser

*** Test Cases ***
I am sign up account using any username and password
    Go to demoblaze page
    Click button Sign up on Home page
    Wait pop up sign up
    I am inputting any Username             username=kcs1234
    I am inputting any Password             password=kcs1234
    Click button Sign up
    Click Ok
    Sleep                                   2s