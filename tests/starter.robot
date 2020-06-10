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
Test the global home page
    [Documentation]     Accepts the cookie policy, changes the location to 'Global' and verifies home page text.
    [Tags]              Home
    Appstate            home
    ClickText           Accept
    ClickText           Change location
    ClickText           Global
    VerifyText          Automate Software Testing with Qentinel Pace

Check for text on the Finnish home page
    [Documentation]     Locates 'Liiketoimintasi pyörii ohjelmistojen varassa' on the Finnish home page.
    [Tags]              Home
    Appstate            home
    ClickText           Change location
    ClickText           Finland
    VerifyText          Liiketoimintasi pyörii ohjelmistojen varassa

Contact page
    [Documentation]     Locates 'We’re driven by quality' on the contact page.
    [Tags]              Contact
    Appstate            contact
    VerifyText          We’re driven by quality
