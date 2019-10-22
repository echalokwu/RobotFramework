*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  firefox
${url}  http://automationpractice.com/index.php




*** Test Cases ***
MyPracticeTest
    # OPENING BROWSER
    open browser  ${url}    ${browser}
    set browser implicit wait  10 seconds
    maximize browser window

    # LANING PAGE
    click link  xpath://a[@class='login']
    ${pageTitle} =  get window titles
    log to console  ${pageTitle}
    input text  id:email_create    emma@gmail.com
    click element  name:SubmitCreate


    # YOUR PERSONAL INFORMATION
    select radio button  id_gender  1
    input text  id:customer_firstname   emma
    input text  id:customer_lastname    emmaemma
    input text  id:passwd   test123

    select from list by index  days     9
    select from list by index  months   9
    select from list by value  years    2019

    # YOUR ADDRESS
    input text  id:firstname    emma
    input text  id:lastname     emmaemma
    input text  id:address1     via paolo
    input text  id:city     Rome
    select from list by value  id:id_state  6
    input text  id:postcode     75757
    input text  id:phone_mobile     76499588234
    input text  id:alias    martinstreet

    # Click Register
    click element  id:submitAccount
    sleep  5
    close browser


*** Keywords ***
