*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary     WITH NAME    faker
Resource    ../Setup/environment.robot
Resource    ../Pages/doSearch_Page.robot


Suite Setup     Open My Browser
#Suite Teardown  Close All Browsers


*** Test Cases ***
Search Operation
    Input Search Term       Jacket
    Click Search Button
    Click Sort By Dropdown
    Select Sort By Price
    Take Screenshot of first 3 product