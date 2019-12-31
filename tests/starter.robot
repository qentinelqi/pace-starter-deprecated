*** Settings ***
Documentation       Tests for Pace Starter.
Resource            ../resources/keywords.robot
Resource            ../resources/locators.robot
Suite Setup         Start Suite
Suite Teardown      End Suite

*** Variables ***

# run tests locally with:
# robot -d output -L DEBUG -b debug.txt tests/starter.robot


*** Test Cases ***
Home page
    [Documentation]     Locates 'Qentinel Oy' on the home page.
    [Tags]              Home
    Appstate            home
    VerifyText          Qentinel Oy

Contact page
    [Documentation]     Locates 'We’re driven by quality' on the contact page.
    [Tags]              Contact
    Appstate            contact
    VerifyText          We’re driven by quality
