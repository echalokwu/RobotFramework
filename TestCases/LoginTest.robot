*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/LoginKeywords.robot


*** Test Cases ***
LoginTest
    Open my Browser  http://www.newtours.demoaut.com/   chrome
    Enter UserName  tutorial
    Enter PassWord  tutorial
    Click Login
    Verify Successfull Login
    Close my Browsers