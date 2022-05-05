*** Settings ***
Documentation  A resource file with reusable variables and keywords
Library         SeleniumLibrary
Resource        ./config/${environment}Config.robot
Resource       ./credentials/${environment}Credentials.robot
Resource       ./pageObjects/locators.robot

*** Keywords ***
 Browser Compatibility: Open Browser1 To Libreview Page
    Open Browser    ${LOGIN_URL}    ${BROWSER_COMPATIBILITY_1}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}

 Browser Compatibility: Open Browser2 To Libreview Page

    Open Browser    ${LOGIN_URL}    ${BROWSER_COMPATIBILITY_2}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
