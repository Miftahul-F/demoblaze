*** Settings ***
Documentation                               Order Test
Library                                     FakerLibrary    
Resource                                    ../Resources/order_keyword.robot
Resource                                    ../Resources/loginpage_keyword.robot
Suite Setup                                 Open Browser Chrome
Suite Teardown                              Close Browser


*** Test Cases ***
User ordering Iphone 6 32gb
    Login success
    Select category phones
    Choose Iphone 6 32gb
    Go to description page of Iphone 6 32gb
    Click button Add to cart
    Appear allert Product added

User ordering MacBook Pro Laptop
    Click button Home
    Select category laptops
    Choose MacBook Pro
    Go to description page of MacBook air
    Click button Add to cart
    Appear allert Product added

User ordering ASUS Full HD monitor
    Click button Home
    Select category monitors
    Choose ASUS Full HD
    Go to description page of ASUS Full HD
    Click button Add to cart
    Appear allert Product added

User going to cart page to purchase order and without inputting credit card number
    [Tags]                                  Negative Test Order
    ${name}                                 FakerLibrary.Name
    ${country}                              FakerLibrary.Country
    ${city}                                 FakerLibrary.City
    ${card}                                 FakerLibrary.Credit Card Number
    ${Month}                                FakerLibrary.Month
    ${Year}                                 FakerLibrary.Year
    Click button cart
    Click Place Order
    Input Name                              ${name}
    Input Country                           ${country} 
    Input City                              ${city} 
    Input Month                             ${Month}
    Input Year                              ${Year}
    Click button Purchase 
    Appear alert Please fill out Name and Creditcard

User success order
    [Tags]                                  Positive Test Order 
    ${name}                                 FakerLibrary.Name
    ${country}                              FakerLibrary.Country
    ${city}                                 FakerLibrary.City
    ${card}                                 FakerLibrary.Credit Card Number
    ${Month}                                FakerLibrary.Month
    ${Year}                                 FakerLibrary.Year
    Input Name                              ${name}
    Input Country                           ${country} 
    Input City                              ${city} 
    Input Credit card                       ${card} 
    Input Month                             ${Month}
    Input Year                              ${Year} 
    Click button Purchase
    Verify purchase success