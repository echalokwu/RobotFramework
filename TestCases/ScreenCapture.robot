*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
LoginTC
    open browser  https://opensource-demo.orangehrmlive.com/    chrome
    maximize browser window
    input text  id:txtUsername  Admin
    input text  id:txtPassword  admin123

    capture element screenshot  xpath://div[@id='divLogo']//img     /Users/echalo/PycharmCoding/RobotFramework/TestCases/Screeshots/logo.png
    capture page screenshot  /Users/echalo/PycharmCoding/RobotFramework/TestCases/Screeshots/pagescreen.png
    close browser