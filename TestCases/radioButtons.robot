*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  firefox
${url}  https://www.practiceselenium.com/practice-form.html


*** Test Cases ***
Testing Radio Buttons and Check Boxes
    open browser  ${url}    ${browser}
    maximize browser window
    set selenium speed  2seconds

    # Selecting Radio buttons
    select radio button  sex    Female
    select radio button  exp    5

    # Select Check Box
    select checkbox  BlackTea
    select checkbox  RedTea

    unselect checkbox  BlackTea
    close browser




*** Keywords ***
