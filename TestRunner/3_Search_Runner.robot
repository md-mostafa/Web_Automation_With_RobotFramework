*** Settings ***
Library    SeleniumLibrary
Resource    ../Pages/doSearch_Page.robot

*** Test Cases ***
Search Operation
    Input Search Term       Jacket
    Click Search Button
    Click Sort By Dropdown
    Select Sort By Price
    Take Screenshots Of First 3 Products