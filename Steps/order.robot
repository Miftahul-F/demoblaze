*** Settings ***
Documentation                               Order Test
Resource                                    ../Resources/order_keyword.robot
Resource                                    ../Resources/loginpage_keyword.robot
Suite Setup                                 Open Browser Chrome
Suite Teardown                              Close Browser

*** Test Cases ***
User ordering Iphone 6 32gb
    Log in success
    Select category phones
    Choose Iphone 6 32gb
    Go to description page of Iphone 6 32gb
    Click button Add to cart
    Appear allert Product added
    Sleep                                   1s

User ordering MacBook air Laptop
    Click button Home
    Select category laptops
    Sleep                                   2s
    Choose MacBook air
    Go to description page of MacBook air
    Click button Add to cart
    Appear allert Product added
    Sleep                                   2s

User ordering ASUS Full HD monitor
    Click button Home
    Select category monitors
    Sleep                                   2s
    Choose ASUS Full HD
    Go to description page of ASUS Full HD
    Click button Add to cart
    Appear allert Product added
    Sleep                                   2s

User going to cart page to purchase order
    Click button cart
    Click Place Order
    Wait page Place Order
    Input Name                              name=Rogers
    Input Country                           country=Indonesia
    Input City                              city=Jakarta
    Input Credit card                       card=0129411
    Input Month                             Month=02
    Input Year                              Year=2025
    Click button Purchase
    Sleep                                   3s
    # Verify purchase success
    # Click Ok on purcase success pop up



