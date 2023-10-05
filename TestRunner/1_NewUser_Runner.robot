*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary    WITH NAME   faker
Resource    ../Setup/environment.robot
Resource    ../Pages/createNewUser_Page.robot

Default Tags    ignore1

Suite Setup         Open My Browser
Suite Teardown      Close All Browsers

*** Variables ***
${password}     12345678Aa

*** Test Cases ***
Create An Account
    ${fakeFirstName}=   faker.First Name
    ${fakeLastName}=    faker.Last Name
    ${fakeEmail}=       faker.Email

    Go To Create An Account Page
    Input First Name                ${fakeFirstName}
    Input Last Name                 ${fakeLastName}
    Input Email                     ${fakeEmail}
    set global variable             ${fakeEmail}
    Input Password                  ${password}
    set global variable             ${password}
    Input ConfirmPassword           ${password}
    Click Create Account Button