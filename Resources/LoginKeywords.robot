*** Settings ***
Library  SeleniumLibrary
Variables   ../PageObject/Locators.py


*** Keywords ***
Open my Browser
    [Arguments]  ${SiteUrl}    ${Browser}
    open browser    ${SiteUrl}    ${Browser}
    maximize browser window

Enter UserName
    [Arguments]  ${username}
    input text  ${txt_loginUserName}    ${username}

Enter PassWord
    [Arguments]  ${passowrd}
    input text  ${txt_loginPassWord}    ${passowrd}

Click Login
        click button  ${btn_singIn}

Verify Successfull Login
    title should be     Find a Flight: Mercury Tours:

Close my Browsers
    close all browsers