*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/practice_resources.robot
Suite Setup  OPEN APP BROWSER
Suite Teardown  CLOSE APP BROWSER
Test Template  INVALID LOGIN TEST


*** Test Cases ***
Right user wrong password   emma@gmail.com  admin222
Right user empty password   emma@gmail.com  ${EMPTY}
Wrong user right password   emm@gmail.com   moimoi123
Wrong user wrong password   emm@gmail.com   admin234
Empty user worng password   ${EMPTY}    admin334


*** Keywords ***
INVALID LOGIN TEST
    CLICK SIGN IN ON HOMEPAGE
    [Arguments]  ${username}    ${password}
    INPUT USERNAME  ${username}
    INPUT PASSWORD  ${password}
    SIGN IN
    ERROR MESSAGE SHOULD BE VISIBLE