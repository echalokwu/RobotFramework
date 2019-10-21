*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  firefox
${url}  https://demo.nopcommerce.com


*** Test Cases ***
LoginTest
    open browser  ${url}    ${browser}
    loginToApplication





*** Keywords ***
loginToApplication
    click link  xpath://a[@class='ico-login']
    input text  id:Email    pavanoltraining@gmail.com
    input text  id:Password     Test@123
    click element  xpath://input[@class='button-1 login-button']
    close browser