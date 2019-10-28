*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
MultiplebrowsersTest
    open browser  http://demo.automationtesting.in/Windows.html     firefox
    maximize browser window
    sleep  3

    open browser  http://www.sakinalium.in/     firefox
    maximize browser window
    sleep  3

    switch browser  1
    ${title1}=   get title
    log to console  ${title1}

    switch browser  2
     ${title2}=   get title
    log to console  ${title2}

#    click element  xpath://ul[@class='nav navbar-nav navbar-right']//a[contains(text(),'Contact')]
    sleep  3
    close all browsers