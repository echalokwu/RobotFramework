*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***
TimeoutTest


    open browser    http://demowebshop.tricentis.com/register   firefox
    set browser implicit wait  10 seconds
    maximize browser window
    wait until page contains  Register

    select radio button  Gender     M

    input text  name:FirstName   David
    input text  name:LastName   John
    input text  name:Email      emma@gmail.com
    input text  name:Password   davidjohn
    input text  name:ConfirmPassword    davidjohn
    click element   id:register-button
    sleep   5


    close browser