*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/practice_resources.robot
Library  DataDriver     ../TestData/LoginData.xlsx  sheet_name=Sheet1

Suite Setup  OPEN APP BROWSER
Suite Teardown  CLOSE APP BROWSER
Test Template  INVALID LOGIN TEST

*** Test Cases ***
LoginTestwithExcel using ${username} ${password}


*** Keywords ***
INVALID LOGIN TEST
    CLICK SIGN IN ON HOMEPAGE
    [Arguments]  ${username}    ${password}
    INPUT USERNAME  ${username}
    INPUT PASSWORD  ${password}
    SIGN IN
    ERROR MESSAGE SHOULD BE VISIBLE