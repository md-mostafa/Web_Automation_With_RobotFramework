*** Settings ***
Library     SeleniumLibrary
Variables   ../Selectors/addToTheCart.py

*** Keywords ***
Mouse Over To The First Product
    mouse over    ${mouseOver_firstProduct}

Select Size For the First Product
    click element    ${size_firstProduct}

Select Color For The First Product
    click element   ${color_firstProduct}

Click Add To The Cart First Product
    wait until element is visible    ${addToCardBtn_1}
    click element    ${addToCardBtn_1}
    sleep    2

Mouse Over To The Second Product
    mouse over    ${mouseOver_secondProduct}

Select Size For The Second Product
    click element    ${size_secondProduct}

Select Color For The Second Product
    click element   ${color_secondProduct}

Click Add To The Cart Second Product
    wait until element is visible    ${addToCardBtn_2}
    click element    ${addToCardBtn_2}
    sleep    2

Mouse Over To The Third Product
    mouse over    ${mouseOver_thirdProduct}

Select Size For The Third Product
    click element    ${size_thirdProduct}

Select Color For The Third Product
    click element   ${color_thirdProduct}

Click Add To The Cart Third Product
    wait until element is visible    ${addToCardBtn_3}
    click element    ${addToCardBtn_3}
    sleep    2