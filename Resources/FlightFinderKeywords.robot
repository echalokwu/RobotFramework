*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObject/Locators.py


*** Keywords ***
Open my Browser
    [Arguments]  ${SiteUrl}    ${Browser}
    open browser    ${SiteUrl}    ${Browser}
    maximize browser window

Enter UserName
    [Arguments]  ${username}
    input text  ${txt_loginUserName}    ${username}

Enter PassWord
    [Arguments]  ${passowrd}
    input text  ${txt_loginPassWord}    ${passowrd}

Click Login
        click button  ${btn_singIn}

Verify Successfull Login
    title should be     Find a Flight: Mercury Tours:

Select Trip Type
    click element   ${slt_oneWay}

Select Number of Passengers
    [Arguments]  ${passengers}
    select from list by value  ${drp_passenger}     ${passengers}

Departing From
    [Arguments]  ${departfrom}
    select from list by label  ${drp_departing}     ${departfrom}

Departing Month
    [Arguments]  ${departdate}
    select from list by label  ${drp_frmonth}   ${departdate}

Deperting Day
    [Arguments]  ${departday}
    select from list by value  ${drp_frday}     ${departday}

Arriving In
    [Arguments]  ${arrvingin}
    select from list by label  ${drp_arriving}  ${arrvingin}

Arriving Month
    [Arguments]  ${arrivemonth}
    select from list by label  ${drp_tomonth}   ${arrivemonth}

Arriving Day
    [Arguments]  ${arriveday}
    select from list by value  ${drp_today}     ${arriveday}

Flight Class
    click element  ${slt_serviceclass}

Select Airline
    [Arguments]  ${selectairline}
    select from list by label  ${airline}   ${selectairline}

Click Continue
    click button    ${click_continue}





Close my Browsers
    close all browsers