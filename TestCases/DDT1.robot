*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/login_resources.robot
Suite Setup     Open my browser
Suite Teardown  Close Browsers
Test Template  Invalid login


*** Test Cases ***
Right user empty pass   admin@yourstore.com    ${EMPTY}
Right user wrong pass   admin@yourstore.com     xyz
Wrong user right pass   adm@yourstore.com   admin
Wrong user empty pass   adm@yourstore.com   ${EMPTY}




*** Keywords ***
Invalid login
    [Arguments]  ${username}    ${password}
    Input username  ${username}
    Input password  ${password}
    Click Login Button
    Error Message Should Be Visible