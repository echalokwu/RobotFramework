*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  firefox
${url}  http://automationpractice.com/index.php




*** Test Cases ***
MyPracticeTest
    open browser  ${url}    ${browser}
    set browser implicit wait  10 seconds
    maximize browser window
    ${pageTitle} =  get window titles
    click link  xpath://a[@class='login']
    log to console  ${pageTitle}
    input text  id:email    emma@gmail.com
    input text  id:passwd   test123
    click element  id:SubmitLogin



    close browser


*** Keywords ***
