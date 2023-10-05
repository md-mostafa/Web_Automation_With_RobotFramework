*** Settings ***
Library    SeleniumLibrary
Resource    ../Pages/addToTheCart_Page.robot

*** Test Cases ***
Add first product to the cart
    Mouse Over To The First Product
    Select Size For the First Product
    Select Color For The First Product
    Click Add To The Cart First Product

Add second product to the cart
    Mouse Over To The Second Product
    Select Size For the Second Product
    Select Color For The Second Product
    Click Add To The Cart Second Product

Add third product to the cart
    Mouse Over To The Third Product
    Select Size For the Third Product
    Select Color For The Third Product
    Click Add To The Cart Third Product