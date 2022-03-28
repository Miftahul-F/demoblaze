*** Settings ***
Resource                                    ../Resources/headerhomepage_keywords.robot
Suite Setup                                 Open Browser Chrome
Suite Teardown                              Close Browser

*** Test Cases ***
I am click button home
    Go to demoblaze page
    Click Button Home
    Verify home page 
    Sleep                   2s

I am click button contact
    Go to demoblaze page
    Click Button Contact
    Verify button contact
    Sleep                   2s

I am click button about us
    Go to demoblaze page
    Click Button About us
    Verify button about us
    Sleep                   2s

I am click button cart
    Go to demoblaze page
    Click Button Cart
    Verify button cart
    Sleep                   2s

I am click button log in
    Go to demoblaze page
    Click Button Log in
    Verify button log in
    Sleep                   2s

I am click button sign up
    Go to demoblaze page
    Click Button Sign up
    Verify button sign up
    Sleep                   2s

