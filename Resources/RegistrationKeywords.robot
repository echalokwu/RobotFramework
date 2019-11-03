*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObject/Locators.py


*** Keywords ***
Open my Browser
    [Arguments]  ${SiteUrl}    ${Browser}
    open browser    ${SiteUrl}    ${Browser}
    maximize browser window

Click Register Link
    click link  ${Reg_link}

Enter First Name
    [Arguments]  ${firtname}
    input text  ${txt_firstName}    ${firtname}

Enter Last Name
    [Arguments]  ${lastname}
    input text  ${txt_lastName}     ${lastname}

Enter Phone
    [Arguments]  ${phone}
    input text  ${txt_phone}    ${phone}

Enter Email
    [Arguments]  ${email}
    input text  ${txt_email}    ${email}

Enter Address
    [Arguments]  ${address}
    input text  ${txt_address}  ${address}

Enter City
    [Arguments]  ${city}
    input text  ${txt_city}     ${city}

Enter State
    [Arguments]  ${state}
    input text  ${txt_State}    ${state}

Enter Post Code
    [Arguments]  ${postcode}
    input text  ${txt_postalCode}   ${postcode}

Select Country
    [Arguments]  ${country}
    select from list by label  ${drp_country}   ${country}

Enter User Name
    [Arguments]  ${username}
    input text  ${txt_UserName}     ${username}

Enter Password
    [Arguments]  ${passowrd}
    input text  ${txt_PassWord}     ${passowrd}

Confirm Password
    [Arguments]  ${confirmpassword}
    input text  ${txt_confrmPass}   ${confirmpassword}

Click Submit
    click button  ${click_submit}

Verify Succesful Registration
    page should contain  Thank you for registering.

Close my Browser
    close all browsers