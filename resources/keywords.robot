*** Settings ***
Documentation       Reusable keywords and variables for Pace Starter.
Library             QWeb
Library             String


*** Variables ***
${BROWSER}    gc


*** Keywords ***
Appstate
    [Documentation] 	Checks which actions should be taken prior to testing and does them
    [Arguments]    		${state}
    ${state}=    		Convert To Lowercase    ${state}
    Run Keyword If     '${state}' == 'home'
    ...     			Home
    Run Keyword If     '${state}' == 'contact'
    ...     			Contact

Home
	Go To                   ${HOME}

Contact
	Go To                   ${CONTACT}

Start Suite
    # Handle suite setup here
    # Open applications etc. here
    [Documentation]        Starts Browser
    Open Browser           about:blank                 ${BROWSER}

End Suite
    Close All Browsers
    # Handle suite teardown actions here
    # Write steps to close apps etc. here

