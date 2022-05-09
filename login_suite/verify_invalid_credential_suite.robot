*** Settings ***
Documentation           This suite will handle invalid credential
...         test - TC_OH_2


Resource    ../resourse/CommonFunctionality.resource

Suite Setup         Launch Browser
Test Teardown       Close Browser

*** Test Cases ***

Invalid Credential Test
    Input Text    id=txtUsername    admin
    Input Password    id=txtPassword    admin123
    Click Element    id=btnLogin
    Element Text Should Be    id=spanMessage    expected=Invalid Credential