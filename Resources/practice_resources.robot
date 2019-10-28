*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${LOGIN URL}    http://automationpractice.com/index.php
${BROWSER}  chrome

*** Keywords ***
OPEN APP BROWSER
    open browser  ${LOGIN URL}  ${BROWSER}
    maximize browser window

CLOSE APP BROWSER
    close all browsers

CLICK SIGN IN ON HOMEPAGE
    click link  Sign in

INPUT USERNAME
    [Arguments]  ${username}
    input text  id:email    ${username}

INPUT PASSWORD
    [Arguments]  ${password}
    input text  id:passwd   ${password}

SIGN IN
    click element  id:SubmitLogin

ERROR MESSAGE SHOULD BE VISIBLE
    page should contain     There is 1 error


