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
    click link  xpath://a[@class='login']
    ${pageTitle} =  get window titles
    log to console  ${pageTitle}
    input text  id:email_create    emma@gmail.com
    click element  name:SubmitCreate


    select radio button  id_gender  1

    input text  id:customer_firstname   emma
    input text  id:customer_lastname    emmaemma
    input text  id:passwd   test123



    select from list by index  days     9
    select from list by index  months   9
    select from list by value  years    2019


    close browser


*** Keywords ***
