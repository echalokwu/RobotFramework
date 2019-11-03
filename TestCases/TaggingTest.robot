*** Settings ***


*** Test Cases ***
TC1 User RegistrationTest
    [Tags]  regression
    log to console  This is user reg test
    log to console  User reg test is over

TC2 LoginTest
    [Tags]  sanity
    log to console  This is login test
    log to console  Login test is over

TC3 Change user settings
    [Tags]  regression
    log to console  This is changing user settings test
    log to console  Change user setting test is over

TC4 LogoutTest
    [Tags]  sanity
    log to console  This is logout test
    log to console  logout test is over

#robot -e sanity Testcases/TaggingTest.robot
