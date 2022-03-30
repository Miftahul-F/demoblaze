*** Settings ***
Documentation                       Order Test
Library                             SeleniumLibrary
Variables                           ../Resources/order_locator.yaml
Variables                           ../Resources/header_locator.yaml

*** Keywords ***
Select category phones
    Click Element                           ${category_phones}
    Sleep                                   3s

Select category laptops
    Click Element                           ${category_laptops}
    Sleep                                   3s

Select category monitors
    Click Element                           ${category_monitors}
    Sleep                                   3s

Choose Iphone 6 32gb
    Scroll Element Into View                ${select_iphone}
    Click Element                           ${select_iphone}

Go to description page of Iphone 6 32gb
    Wait Until Page Contains                Product description                   timeout=10

Choose MacBook Pro
    Scroll Element Into View                ${select_macbookpro}
    Click Element                           ${select_macbookpro}

Go to description page of MacBook air
    Wait Until Page Contains                MacBook Pro

Choose ASUS Full HD
    Click Element                           ${select_asusfullhd}

Go to description page of ASUS Full HD
    Wait Until Page Contains                ASUS Full HD

Click button Add to cart
    CLick Element                           ${button_addcart}

Appear allert Product added
    Handle Alert

Click button Home
    CLick Element                           ${button_home}

Click button cart
    Click Element                           ${button_cart}

Click Place Order
    Click Element                           ${button_placeorder}
    Wait Until Element Is Visible           id:orderModalLabel
    Sleep                                   2s

Input Name
    [Arguments]                             ${name}
    Input Text                              ${input_name}                             ${name}       

Input Country
    [Arguments]                             ${country}
    Input Text                              ${input_country}                          ${country} 

Input City
    [Arguments]                             ${city}
    Input Text                              ${input_city}                             ${city}                 

Input Credit card
    [Arguments]                             ${card}
    Input Text                              ${input_cc}                               ${card}                 

Input Month
    [Arguments]                             ${Month}
    Input Text                              ${input_month}                            ${Month}                 

Input Year
    [Arguments]                             ${Year}
    Input Text                              ${input_year}                             ${Year}           

Click button Purchase
    Click Element                           ${button_purchase}

Verify purchase success
    Wait Until Page Contains Element        ${purchase_succes}                     
    Click Element                           ${button_ok}

Appear alert Please fill out Name and Creditcard
    Alert Should Be Present                 Please fill out Name and Creditcard.            ACCEPT