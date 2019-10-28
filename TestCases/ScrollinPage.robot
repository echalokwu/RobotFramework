*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
ScrollTest
    open browser  https://www.countries-ofthe-world.com/flags-of-the-world.html     chrome
    maximize browser window
    sleep  5
    #execute javascript  window.scrollTo(0,2500)

    #scroll element into view  xpath://td[contains(text(),'India')]
    execute javascript  window.scrollTo(0,document.body.scrollHeight)