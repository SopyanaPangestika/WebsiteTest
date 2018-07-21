*** Settings ***
Test Setup              Open Browser To Login Page
Suite Teardown          Close Browser
Resource                ../_RESOURCE_IMPORT.robot

*** Test Case ***
Login With Account
    [Documentation]                                       As user, I want to login to the site with exist account and verify the validation form
    Verify Login and Register Page
    Input Login Username
    Submit Btn Login
    Verify Login Validation
    Input Login Password
    Submit Btn Login
    Verify Success Login