*** Settings ***
Documentation       Reusable keywords and variables for starter_repo.
Library             QVision
Library             String


*** Variables ***


*** Keywords ***
Appstate
    [Documentation] 	Checks which actions should be taken prior to testing and does them
    [Arguments]    		${state}
    ${state}=    		Convert To Lowercase    ${state}
    Run Keyword If     '${state}' == 'first_item'
    ...     			FirstAction
    Run Keyword If     '${state}' == 'second_item'
    ...     			SecondAction


Start Suite
    # Handle suite setup here
    # Open applications etc. here

End Suite
    # Handle suite teardown actions here
    # Write steps to close apps etc. here

