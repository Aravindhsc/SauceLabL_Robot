*** Settings ***
Library    AppiumLibrary

*** Variables ***

${PLATFORM_NAME}        Android
${PLATFORM_VERSION}     9
${DEVICE?NAME}          Samsung_Galaxy_S9_free
${REMOTE_URL}           https://oauth-aravindhtransfer-9634e:8519d251-16b2-493d-90cd-888058ae4e22@ondemand.eu-central-1.saucelabs.com:443/wd/hub
${SAUCE_ACCESS_KEY}     8519d251-16b2-493d-90cd-888058ae4e22    
${SAUCE_USERNAME}       oauth-aravindhtransfer-9634e
${TEST_NAME}            Demo  
${apk}                  storage:filename=Demo.apk  

*** Keywords ***
Setup
    Open application  ${REMOTE_URL}
    ...  platformName=${PLATFORM_NAME}
    ...  platformVersion=${PLATFORM_VERSION}
    ...  username=${SAUCE_USERNAME}
    ...  accessKey=${SAUCE_ACCESS_KEY}
    ...  app=${apk}
    ...  name=${TEST_NAME}  
    ...  options=add_argument("--ignore-certificate-errors")

Teardown
    Close all applications
