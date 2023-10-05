*** Settings ***
Library     SeleniumLibrary
Variables   ../Selectors/newUser.py

*** Keywords ***
Go To Create An Account Page
    wait until element is visible   ${createAccountBtn}
    click link    ${createAccountBtn}

Input First Name
    [Arguments]    ${firstname}
    input text    ${enterFirstName}       ${firstname}

Input Last Name
    [Arguments]    ${lastname}
    input text    ${enterLastName}       ${lastname}

Input Email
    [Arguments]    ${email}
    input text    ${enterEmail}     ${email}

Input Password
    [Arguments]    ${pass}
    input text    ${enterPass}      ${pass}

Input ConfirmPassword
    [Arguments]    ${pass}
    input text    ${enterConfirmPass}      ${pass}

Click Create Account Button
    scroll element into view        ${btnCreate}
    wait until element is visible    ${btnCreate}
    click button    ${btnCreate}
    sleep   1