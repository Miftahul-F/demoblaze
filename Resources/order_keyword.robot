*** Settings ***
Documentation                       Order Test
Library                             SeleniumLibrary
Variables                           ../Resources/locator.yaml

*** Keywords ***
Close Browsers
    Close Browser

Select category phones
    Click Element                           (//*[@id="itemc"])[1]

Select category laptops
    Click Element                           (//*[@id="itemc"])[2]

Select category monitors
    Click Element                           (//*[@id="itemc"])[3]

Scroll until see Iphone 6 32gb
    Scroll Element Into View                //*[@id="tbodyid"]/div[5]/div/div/h4/a

Choose Iphone 6 32gb
    Click Element                           //*[@id="tbodyid"]/div[5]/div/div/h4/a

Go to description page of Iphone 6 32gb
    Wait Until Page Contains                Iphone 6 32gb

Choose MacBook air
    Click Element                           //*[@id="tbodyid"]/div[3]/div/div/h4/a

Go to description page of MacBook air
    Wait Until Page Contains                MacBook air

Choose ASUS Full HD
    Click Element                           //*[@id="tbodyid"]/div[2]/div/div/h4/a

Go to description page of ASUS Full HD
    Wait Until Page Contains                ASUS Full HD

Click button Add to cart
    CLick Element                           //*[@id="tbodyid"]/div[2]/div/a

Appear allert Product added
    Handle Alert

Click button Home
    CLick Element                           //*[@id="navbarExample"]/ul/li[1]/a

Click button cart
    Click Element                           //*[@id="navbarExample"]/ul/li[4]/a

Click Place Order
    Click Element                           //*[@id="page-wrapper"]/div/div[2]/button

Wait page Place Order
    Wait Until Element Is Visible           //*[@id="orderModalLabel"]

Input Name
    [Arguments]                             ${name}
    Input Text                              //*[@id="name"]                             ${name}       

Input Country
    [Arguments]                             ${country}
    Input Text                              //*[@id="country"]                          ${country} 

Input City
    [Arguments]                             ${city}
    Input Text                              //*[@id="city"]                             ${city}                 

Input Credit card
    [Arguments]                             ${card}
    Input Text                              //*[@id="card"]                             ${card}                 

Input Month
    [Arguments]                             ${Month}
    Input Text                              //*[@id="month"]                            ${Month}                 

Input Year
    [Arguments]                             ${Year}
    Input Text                              //*[@id="year"]                             ${Year}           

Click button Purchase
    Click Element                           //*[@id="orderModal"]/div/div/div[3]/button[2]

# Verify purchase success
#     Element Should Be Visible               /html/body/div[9]/p                     

# Click Ok on purcase success pop up
#     Click Element                           /html/body/div[10]/div[7]/div/button