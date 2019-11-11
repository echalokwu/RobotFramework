*** Settings ***
Library  Selenium2Library
Variables  ../PageObject/OrangeHRMLocators.py

*** Variables ***
${SITEURL}  https://opensource-demo.orangehrmlive.com/index.php/auth/login
${BROWSER}  chrome


*** Keywords ***
OPEN MY BROWSER
    open browser  ${SITEURL}     ${BROWSER}
    maximize browser window

ENTER USER NAME
    [Arguments]  ${Username}
    input text  ${txt_LoginUserName}    ${Username}

ENTER PASSWORD
    [Arguments]  ${Password}
    input text  ${txt_LoginPassword}    ${Password}

CLICK LOGIN
    click button    ${btn_Login}

CLICK WELCOME ADMIN
    click element  ${welcome_Admin}

LOGOUT
    click element  ${logout}


VERIFY SUCCESSFUL LOGIN PAGE
    title should be     OrangeHRM


CLOSE MY BROWSER
    close all browsers

ERROR MESSAGE SHOULD BE VISIBLE
    page should contain   Invalid credentials

TAKE SCREENSHOT
    capture page screenshot  /Users/echalo/PycharmCoding/RobotFramework/TestCases/Screeshots/OrangeHRMPage.png
