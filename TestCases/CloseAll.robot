*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
MyTestCase
    open browser  http://demowebshop.tricentis.com/register   firefox
    maximize browser window

    open browser  http://automationpractice.com/index.php   firefox
    maximize browser window

    # Close all browsers
    close all browsers