*** Settings ***
Library     SeleniumLibrary
Variables   ../Selectors/signIn.py

*** Keywords ***
Go To Sign In Page
    wait until element is visible   ${signInBtn}
    click link    ${signInBtn}

Input Email
    [Arguments]    ${email}
    input text    ${enterEmail}     ${email}

Input Password
    [Arguments]    ${pass}
    input text    ${enterPass}      ${pass}

Click SignIn Button
    scroll element into view        ${btnSignIn}
    wait until element is visible    ${btnSignIn}
    click button    ${btnSignIn}
    sleep   3