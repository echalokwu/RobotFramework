*** Settings ***
Library  SeleniumLibrary
#Resource  ../Resources/LoginKeywords.robot
Resource  ../Resources/FlightFinderKeywords.robot


*** Test Cases ***
LoginTest
    Open my Browser  http://www.newtours.demoaut.com/   chrome
    Enter UserName  tutorial
    Enter PassWord  tutorial
    Click Login
    Verify Successfull Login
    Select Trip Type
    Select Number of Passengers  3
    Departing From  London
    Departing Month  October
    Deperting Day  7
    Arriving In  New York
    Arriving Month  December
    Arriving Day  25
    Flight Class    #Business class
    Select Airline  Unified Airlines
    Click Continue
    sleep  5

    Close my Browsers