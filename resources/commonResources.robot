*** Settings ***
Documentation  A resource file with reusable variables and keywords
Library         SeleniumLibrary
Resource        ./config/${environment}Config.robot
Resource       ./credentials/${environment}Credentials.robot
Resource       ./pageObjects/locators.robot

*** Keywords ***

Open Browser To Libreview Page
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}

Close trust consent window
    Click Element   ${TRUST_CONSENT_WINDOW}

Verify Select Country and Language page is launched
    Set Selenium Speed      ${DELAY}
    Title Should Be     LibreView
    Location Should Be     ${COUNTRY_SELECTION_URL}

Submit Country and language options
    Select From List By Label   ${COUNTRY_SELECTION_ID}       ${COUNTRY_SELECTION_VALUE}
    Select From List By Label   ${LANGUAGE_SELECTION_ID}      ${LANGUAGE_SELECTION_VALUE}
    Click Button       ${SUBMIT_BTN}

Verify Country and language options submission
    Set Selenium Speed      ${DELAY}
    Title Should Be     LibreView
    Location Should Be     ${LOGIN_URL}
    Page Should Contain Element     ${USERNAME_INPUT_FIELD}
    Page Should Contain Element     ${PASSWORD_INPUT_FIELD}

Input Username
    Input Text    ${USERNAME_INPUT_FIELD}   ${VALID_USERNAME}

Input Password
    Input Text    ${PASSWORD_INPUT_FIELD}    ${PASSWORD}

Submit Credentials
    Click Button    ${LOGIN_BTN}

Verify 2 factor Authorization Page
    Set Selenium Speed      ${DELAY}
    Title Should Be     LibreView
    Location Should Be      ${VERIFY_IDENTITY_URL}

Send Code
    Click Button    ${SENDCODE_BTN}

Verify for disabled Verify and Login Button
    Element Should Be Disabled      ${VERIFY_DISABLED}

Close my Browser
    Close Browser