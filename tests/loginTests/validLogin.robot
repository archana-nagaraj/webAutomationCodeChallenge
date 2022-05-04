*** Settings ***
Resource        ../../resources/commonResources.robot
Resource        ../../resources/${environment}Config.robot
Resource        ../../credentials/${environment}Credentials.robot

*** Test Cases ***
Web Automation Code Challenge: Step1: Go to https://www.libreview.com/
    Open Browser    ${LOGIN_URL}   ${BROWSER}
    Maximize Browser Window
    Page Should Contain Element    id:consent-banner
    Page Should Contain Element     id:truste-consent-buttons
    Page Should Contain Element    id:truste-consent-button
    Click Element   id:truste-consent-close
    Set Selenium Speed    ${DELAY}
    Title Should Be     LibreView
    Location Should Be     ${COUNTRY_SELECTION_URL}
Step2: Select Country/Region of Residence,Language and click Submit to continue
    Select From List By Label   id:country-select       ${COUNTRY_SELECTION}
    Select From List By Label   id:language-select      ${LANGUAGE_SELECTION}
    Click Button       id:submit-button
    Set Selenium Speed    ${DELAY}
    Title Should Be     LibreView
    Location Should Be      ${LOGIN_URL}
Step3: Type below username and password and click Log In to continue
    Page Should Contain Element     id:login-title-text
    Page Should Contain Element     id:loginForm-email-input
    Input Text     id:loginForm-email-input     ${VALID_USERNAME}
    Page Should Contain Element     id:loginForm-password-input
    Input Password     id:loginForm-password-input      ${PASSWORD}
    Page Should Contain Element     id:loginForm-submit-button
    Click Button        id:loginForm-submit-button
    Set Selenium Speed    ${DELAY}
    Title Should Be     LibreView
    Location Should Be      ${VERIFY_IDENTITY_URL}
Step4: On 2FA page, click button Send Code.
    Page Should Contain Element     id:wizardCard-header-text
    Page Should Contain Element     id:twoFactor-step1-next-button
    Click Button        id:twoFactor-step1-next-button
    Set Selenium Speed    ${DELAY}
Step5: Verify button "Verify and Log in” should be disabled
    Log Title
    Page Should Contain ELement     id:twoFactor-step2-next-button
    Element Should Be Disabled      id:twoFactor-step2-next-button
    [teardown]  Close Browser








