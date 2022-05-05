*** Settings ***
Resource     ../../Resources/browserOverrideResources.robot
Resource     ../../Resources/commonResources.robot


*** Test Cases ***
# Browser compatibility test with Browser 1
Web Automation Code Challenge: Step1: Go to https://www.libreview.com/
     Browser Compatibility: Open Browser1 To Libreview Page
     Close trust consent window
     Verify Select Country and Language page is launched
Step2: Select Country Language and click Submit to continue
    Submit Country and language options
    Verify Country and language options submission
Step3: Type below username and password and click Log In to continue
    Input Username
    Input Password
    Submit Credentials
    Verify 2 factor Authorization Page
Step4: On 2FA page, click button Send Code.
    Send Code
Step5: Verify button Verify and Log in should be disabled
    Verify for disabled Verify and Login Button
    Close my Browser

# Browser compatibility test with Browser 2
Web Automation Code Challenge: Step1: Go to https://www.libreview.com/
    Browser Compatibility: Open Browser2 To Libreview Page
    Close trust consent window
    Verify Select Country and Language page is launched
Step2: Select Country Language and click Submit to continue
    Submit Country and language options
    Verify Country and language options submission
Step3: Type below username and password and click Log In to continue
    Input Username
    Input Password
    Submit Credentials
    Verify 2 factor Authorization Page
Step4: On 2FA page, click button Send Code.
    Send Code
Step5: Verify button Verify and Log in should be disabled
    Verify for disabled Verify and Login Button
    Close my Browser










