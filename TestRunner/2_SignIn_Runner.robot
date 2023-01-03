*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary     WITH NAME    faker
Resource    ../Setup/environment.robot
Resource    ../Pages/doSignIn_Page.robot

Default Tags    ignore1

Suite Setup     Open My Browser
Suite Teardown  Close All Browsers


*** Test Cases ***
Sign In
    Go To Sign In Page

    ${email}    get variable value    ${fakeEmail}
    ${password}     get variable value    ${password}

    Input Email    ${email}
    Input Password    ${password}

    Click SignIn Button