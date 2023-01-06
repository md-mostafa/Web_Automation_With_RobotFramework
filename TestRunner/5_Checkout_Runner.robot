*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary     WITH NAME    faker
Resource    ../Setup/environment.robot
Resource    ../Pages/doCheckout_Page.robot

Suite Teardown      Close All Browsers

*** Variables ***
${zipCode}=             43534
${country}=             United States
${phone}=               1232324334
${state}=               Alaska


*** Test Cases ***
Go to the checkout page
    Scroll to cart btn
    Click the cart btn
    Click checkout btn

Enter shipping details
    ${street}=              faker.Street Address
    ${city}=                faker.City
    set selenium timeout    30

    Enter street address        ${street}
    Enter city                  ${city}
    Select state                ${state}
    Enter zip-code              ${zipCode}
    Select country              ${country}
    Enter phone                 ${phone}
    Click next

Place Order
    Click place order button