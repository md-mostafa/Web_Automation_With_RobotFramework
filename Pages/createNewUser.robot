*** Settings ***
Library     SeleniumLibrary
Variables   ../Selectors/newUser.py

*** Keywords ***
Go To Create An Account
    wait until element is visible   ${createAccountBtn}
    click link    ${createAccountBtn}