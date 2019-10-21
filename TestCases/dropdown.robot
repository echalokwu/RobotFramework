*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  firefox
${url}  https://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Handling DropDowns and Lists
    open browser  ${url}    ${browser}
    maximize browser window

    select from list by label  continents   Australia
    sleep  3
    select from list by index  continents   5
    sleep   3



    # List box
    select from list by label  selenium_commands    Switch Commands
    select from list by label  selenium_commands    WebElement Commands
    sleep  3
    unselect from list by label  selenium_commands  Switch Commands
    close browser