*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Open My Browser
    open browser    https://magento.softwaretestingboard.com/   chrome
    maximize browser window
    set selenium speed    2



Close All Browsers
    close browser