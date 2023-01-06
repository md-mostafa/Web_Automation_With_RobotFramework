*** Settings ***
Library     SeleniumLibrary
Variables   ../Selectors/addToTheCart.py


*** Keywords ***
Mouse over to the first product
    mouse over    ${mouseOver_firstProduct}
Select size for the first product
    click element    ${size_firstProduct}
Select color for the first product
    click element   ${color_firstProduct}
Click add to the cart first product
    click element    ${addToCardBtn_1}
    sleep    2


Mouse over to the second product
    mouse over    ${mouseOver_secondProduct}
Select size for the second product
    click element    ${size_secondProduct}
Select color for the second product
    click element   ${color_secondProduct}
Click add to the cart second product
    click element    ${addToCardBtn_2}
    sleep    2



Mouse over to the third product
    mouse over    ${mouseOver_thirdProduct}
Select size for the third product
    click element    ${size_thirdProduct}
Select color for the third product
    click element   ${color_thirdProduct}
Click add to the cart third product
    click element    ${addToCardBtn_3}

    sleep    5