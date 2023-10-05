*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary     WITH NAME    faker
Resource    ../Setup/environment.robot
Resource    ../Pages/doSignIn_Page.robot

Default Tags    ignore1
Suite Setup     Open My Browser

*** Test Cases ***
Sign In
    ${email}    get variable value          ${fakeEmail}
    ${password}     get variable value      ${password}

    Go To Sign In Page
    Input Email             ${email}
    Input Password          ${password}
    Click SignIn Button