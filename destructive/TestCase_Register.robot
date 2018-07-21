*** Settings ***
Test Setup              Open Browser To Login Page
Suite Teardown          Close Browser
Resource                ../_RESOURCE_IMPORT.robot

*** Test Case ***
Register With Account
    [Documentation]                                       As user, I want to register to the site with new account and verify the validation
    Verify Login and Register Page
    Input Existing Email Address
    Submit Create an account btn
    Verify Validation Email Account
    input Email Address 
    Submit Create an account btn
    Verify Form Register Page
    