*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TableValidations
    open browser  https://testautomationpractice.blogspot.com/  chrome
    maximize browser window

    ${rows}     get element count  xpath://table[@name='BookTable']/tbody/tr
    log to console  ${rows}

    table column should contain  xpath://table[@name='BookTable']  3   Subject