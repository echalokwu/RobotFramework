*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TabbedWindowsTest
    open browser  http://demo.automationtesting.in/Windows.html     firefox
    click element  xpath://*[@id="Tabbed"]/a/button
    select window  window  title=Sakinalium | Home
    click element  xpath://ul[@class='nav navbar-nav navbar-right']//a[contains(text(),'Contact')]
    sleep  3
    close all browsers