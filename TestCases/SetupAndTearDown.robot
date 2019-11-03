*** Settings ***

Suite Setup  log to console     Opening Browser
Suite Teardown  log to console  closing Browser

Test Setup  log to console  Login to Application
Test Teardown  log to console   Logout from Application

*** Test Cases ***
TC1 Prepaid Recharge    log to console  This is a prepaid testcase

TC2 Postpaid Recharge   log to console  This is a postpaid testcase

TC3 Search  log to console  This is a search testcase

TC4 Advance Search  log to console  This is an Advance search testcase