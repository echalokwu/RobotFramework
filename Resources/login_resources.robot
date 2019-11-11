*** Settings ***
Library  Selenium2Library

*** Variables ***
${LOGIN URL}    https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${BROWSER}  chrome

*** Keywords ***
Open my browser
    open browser  ${LOGIN URL}  ${BROWSER}
    maximize browser window

Close Browsers
    close all browsers

Open Login Page
    go to       ${LOGIN URL}

Input username
    [Arguments]  ${username}
    input text  id:Email      ${username}

Input password
    [Arguments]  ${passowrd}
    input text  id:Password     ${passowrd}

Click Login Button
    click element  xpath://input[@class='button-1 login-button']

Click Logout Link
    click link  xpath://a[contains(text(),'Logout')]


Error Message Should Be Visible
    page should contain  Login was unsuccessful


Dashboard page should be visible
    page should contain  Authentication failed.



