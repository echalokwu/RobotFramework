*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
HandlinAlerts
    open browser  https://testautomationpractice.blogspot.com/  firefox
    click element  xpath://button[contains(text(),'Click Me')]      #OPENS ALERT
    sleep  3
    #handle alert  accept
    #handle alert  dismiss
    #handle alert  leave
    alert should be present  Press a button!
    close browser
