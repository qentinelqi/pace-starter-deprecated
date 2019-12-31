*** Settings ***
Documentation       Tests for starter_repo
Resource            ../resources/keywords.robot
Resource            ../resources/locators.robot
Suite Setup         Start Suite
Suite Teardown      End Suite

*** Variables ***

# run tests locally with:
# robot -d output -L DEBUG -b debug.txt tests/starter_repo.robot

*** Test Cases ***
Example Test
    [Documentation]     Example documentation for a test case
    [Tags]              Example
    Appstate            First item
    VerifyText          Change me
