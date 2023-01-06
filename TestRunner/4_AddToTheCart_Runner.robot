*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary     WITH NAME    faker
Resource    ../Pages/addToTheCart_Page.robot


*** Test Cases ***
Add first product to the cart
    Mouse over to the first product
    Select size for the first product
    Select color for the first product
    Click add to the cart first product

Add second product to the cart
    Mouse over to the second product
    Select size for the second product
    Select color for the second product
    Click add to the cart second product

Add third product to the cart
    Mouse over to the third product
    Select size for the third product
    Select color for the third product
    Click add to the cart third product