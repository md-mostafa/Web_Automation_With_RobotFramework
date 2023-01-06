*** Settings ***
Library     SeleniumLibrary
Variables   ../Selectors/checkout.py

*** Keywords ***
Scroll to cart btn
    scroll element into view    ${cartBtn}
    sleep   2
Click the cart btn
    click element    ${cartBtn}
    sleep    2
Click checkout btn
    click element    ${checkoutBtn}
    sleep    2


Enter street address
    [Arguments]    ${street}
    wait until page contains element                ${streetField}
    log to console    ${street}
    input text    ${streetField}          ${street}
Enter city
    [Arguments]    ${city}
    input text    ${cityInpField}   ${city}
Select state
    [Arguments]    ${state}
    select from list by index    ${stateField}      2
Enter zip-code
    [Arguments]    ${zip}
    input text    ${zipField}   ${zip}
Select country
    [Arguments]    ${country}
    scroll element into view    ${countrySelect}
    select from list by index    ${countrySelect}   2
Enter phone
    [Arguments]     ${phone}
    input text    ${phoneField}     ${phone}
Click next
    scroll element into view    ${nextBtn}
    click element    ${nextBtn}
    sleep   10

Click place order button
    wait until element is visible    ${placeOrderBtn}
    scroll element into view    ${placeOrderBtn}
    click element    ${placeOrderBtn}
    sleep    20