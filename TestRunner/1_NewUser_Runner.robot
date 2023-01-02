*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary    WITH NAME   faker
Resource    ../Setup/environment.robot
Resource    ../Pages/createNewUser_Page.robot

Suite Setup         Open My Browser
Suite Teardown      Close All Browsers

*** Variables ***
${password}     12345678Aa



*** Test Cases ***
Create An Account
    ${fakeFirstName}=   faker.First Name
    ${fakeLastName}=    faker.Last Name
    ${fakeEmail}=   faker.Email

    set global variable    ${fakeEmail}

    Go To Create An Account

    Input First Name    ${fakeFirstName}
    Input Last Name     ${fakeLastName}

    Input Email         ${fakeEmail}
    Input Password      ${password}
    set global variable         ${password}

    Input ConfirmPassword       ${password}

    Click Create Account Button

