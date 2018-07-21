*** Settings ***
Test Setup              Setup Server
Suite Teardown          Close Browser
Resource                ../_RESOURCE_IMPORT.robot

*** Test Case ***
Add To Cart without login
    [Documentation]                                       As user, I want to add the product to my cart without login
    Verify Product info
    Submit add to cart 
    Verify Product Successfull Added
