*** Settings ***
Library      SeleniumLibrary
Resource     ../variables.robot

*** Keywords ***
Open Login Page
    Open Browser    ${BASE_URL_FRONTEND}    chrome
    Maximize Browser Window
    Wait Until Element Is Visible    ${EMAIL_INPUT}

Input Login Credentials
    [Arguments]    ${email}    ${password}
    Input Text    ${EMAIL_INPUT}    ${email}
    Input Text    ${PASSWORD_INPUT}    ${password}

Submit Login
    Click Button    ${LOGIN_BUTTON}