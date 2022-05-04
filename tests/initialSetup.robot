*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Launch Browser - Google Page
        Open Browser    https://www.google.com  chrome
        [teardown]  Close Browser

*** Keywords ***
