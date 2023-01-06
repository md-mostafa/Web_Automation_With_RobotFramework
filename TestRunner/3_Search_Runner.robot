*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary     WITH NAME    faker
Resource    ../Pages/doSearch_Page.robot


*** Test Cases ***
Search Operation
    Input Search Term       Jacket
    Click Search Button
    Click Sort By Dropdown
    Select Sort By Price
    Take Screenshot of first 3 product