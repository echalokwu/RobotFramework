*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/resources.robot

*** Variables ***
${url}  http://www.newtours.demoaut.com/
${browser}  chrome


*** Test Cases ***
TC1
    ${PageTitle}=   launchbrowser
    log     ${PageTitle}
    input text  name:userName   mercury
    input text  name:password   mercury




