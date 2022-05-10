* Settings *
Documentation           This suite will handle valid credential
...       test    TC_OH2

Resource  ../resourse/CommonFunctionality.resource

Test Setup   Launch Browser

Library    AppiumLibrary
Library    SeleniumLibrary

* Test Cases *
Valid Credential Test

    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Element    id=btnLogin
    Page Should Contain   My Info
    Click Element    xpath=//b[contains(text(),'My Info')]
    Click Element    xpath=//a[contains(text(),'Emergency Contacts')]
    Click Element    xpath=//input[@id='btnAddContact']
    Input Text    id=emgcontacts_name    Divya
    Input Text    id=emgcontacts_relationship    Myself
    Input Text    id=emgcontacts_homePhone    9687452134
    Input Text    id=emgcontacts_mobilePhone    9685412347
    Input Text    id=emgcontacts_workPhone    044-584-148
    Click Element    id=btnSaveEContact
    Close Browser