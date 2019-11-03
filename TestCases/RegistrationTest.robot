*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/RegistrationKeywords.robot


*** Test Cases ***
RegistrationTest
    open browser  http://www.newtours.demoaut.com/   chrome
    Click Register Link
    Enter First Name  emma
    Enter Last Name  emma
    Enter Phone  123456789
    Enter Email  emma@gamil.com
    Enter Address  pacific drive
    Enter City  London
    Enter State  London
    Enter Post Code  se280bz
    Select Country  UNITED KINGDOM
    Enter User Name  emma001
    Enter Password  admin123
    Confirm Password  admin123
    Click Submit
    Verify Succesful Registration
    Close my Browser
