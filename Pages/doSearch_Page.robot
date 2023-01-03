*** Settings ***
Library     SeleniumLibrary
Variables   ../Selectors/search.py


*** Keywords ***
Input Search Term
    [Arguments]    ${searchTerm}
    wait until element is visible   ${searchBox}
    input text   ${searchBox}    ${searchTerm}

Click Search Button
    submit form    ${searchFrmSubmit}


Click Sort By Dropdown
    wait until element is visible   ${sorterSelect}
    click element    ${sorterSelect}
    sleep    1

Select Sort By Price
    click element    ${dropdownPrice}
    sleep   2

