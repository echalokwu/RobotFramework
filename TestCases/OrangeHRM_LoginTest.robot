*** Settings ***
Library  Selenium2Library
Resource  ../Resources/OrangeHRMKeywords.robot
Suite Setup  OPEN MY BROWSER
Suite Teardown  CLOSE MY BROWSER
#Test Template   LOGIN TEST



*** Test Cases ***
Invalid_LoginTest_HRM
    [Documentation]  # Simple invalid login *** test cases ***
    [Tags]  # Sanity *** Test Cases ***
    ENTER USER NAME  Admin
    ENTER PASSWORD  123admin
    CLICK LOGIN
    ERROR MESSAGE SHOULD BE VISIBLE
    TAKE SCREENSHOT

Valid_LoginTest_HRM
    [Documentation]  # Simple login test.
    [Tags]  # Sanity Test
    ENTER USER NAME     Admin
    ENTER PASSWORD  admin123
    CLICK LOGIN
    VERIFY SUCCESSFUL LOGIN PAGE
    sleep  3
    CLICK WELCOME ADMIN
    sleep  3
    LOGOUT


#RIGHT USER EMPTY PASSOWRD   Admin   ${EMPTY}
#RIGHT USER WRONG PASSOWRD   Admin   admin12345
#WRONG USER USER CORRECT PASSOWRD    edmin   admin123
#RIGHT USER RIGHT PASSOWRD   Admin   admin123


#*** Keywords ***
#LOGIN TEST
#    [Arguments]  ${Username}    ${Password}
#    ENTER USER NAME  ${Username}
#    ENTER PASSWORD  ${Password}
#    CLICK LOGIN
#    ERROR MESSAGE SHOULD BE VISIBLE




