*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
launchbrowser
    open browser    http://www.newtours.demoaut.com/  chrome
    maximize browser window
    ${title}=   get title
    [Return]    ${title}