*** Settings ***
# Don't change these settings when trying out Qentinel Pace for the first time
Documentation       Test suites for Pace starter.
Library             QWeb
Suite Setup         Open Browser       about:blank       chrome
Suite Teardown      Close All Browsers


*** Test Cases ***
# You can add your own test cases here
Test the global home page
    [Documentation]     Accepts the cookie policy and verifies home page text.    # Explain the test
    GoTo                https://qentinel.com                                      # You can change this URL to test any other website
    ClickText           Accept                                                    # Click any visible text on the page
    VerifyText          Automate Software Testing with Qentinel Pace              # Verify that the page contains the given text