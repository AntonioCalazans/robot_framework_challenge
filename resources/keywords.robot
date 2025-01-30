*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary locale=pt_BR
Resource    pages/login_page.robot
Resource    pages/register_page.robot

*** Keywords ***
Perform Login
    [Arguments]    ${email}    ${password}
    Open Login Page
    Input Login Credentials    ${email}    ${password}
    Submit Login

Perform User Registration
    [Arguments]    ${name}    ${email}    ${password}
    Open Register Page
    Register New User    ${name}    ${email}    ${password}

Validate API Response
    [Arguments]    ${response}    ${status_code}    ${field}=None    ${expected_value}=None
    Should Be Equal As Numbers    ${response.status_code}    ${status_code}
    Log    Response: ${response.json()}
    Run Keyword If    ${field} != None    Validate Response Field    ${response.json()}    ${field}    ${expected_value}

Validate Response Field
    [Arguments]    ${response_body}    ${field}    ${expected_value}
    ${actual_value}=    Set Variable    ${response_body}[${field}]
    Should Be Equal    ${actual_value}    ${expected_value}    Field ${field} validation failed.

Generate Random User Data
    ${random_email}=    FakerLibrary.Email
    ${random_name}=     FakerLibrary.Name
    'RETURN'    ${random_name}    ${random_email}