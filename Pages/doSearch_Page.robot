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
    execute javascript    window.scrollTo(0,300)

Take Screenshots Of First 3 Products
    log to console      Taking Screenshot of first product
    capture element screenshot      ${firstProduct}    ../Screenshot/product1.png

    log to console      Taking Screenshot of second product
    capture element screenshot      ${secondProduct}    ../Screenshot/product2.png

    log to console      Taking Screenshot of third product
    capture element screenshot      ${thirdProduct}    ../Screenshot/product3.png

    sleep   2