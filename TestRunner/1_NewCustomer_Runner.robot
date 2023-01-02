*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary    WITH NAME   faker
Resource    ../Setup/environment.robot
Resource    ../Pages/createNewUser.robot

Suite Setup         Open My Browser
Suite Teardown      Close All Browsers


*** Test Cases ***
Create An Account
    Go To Create An Account