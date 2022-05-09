*** Settings ***
Documentation           This suite will handle valid credential
...         test - TC_OH_2


Resource    ../resourse/CommonFunctionality.resource

Suite Setup         Launch Browser
Test Teardown       Close Browser

*** Test Cases ***

Valid Credential Test
    Launch Browser
    Input Text    id=txtUsername    admin
    Input Password    id=txtPassword    admin123
    Click Element    id=btnLogin
    Page Should Contain     My Info


