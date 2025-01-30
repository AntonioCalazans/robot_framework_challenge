*** Settings ***
Library    RequestsLibrary
Resource  ../../resources/variables.robot
Resource  ../../resources/keywords.robot


*** Test Cases ***
Testar Login Pela API
    Create Session    Serverest    ${BASE_URL_API}    headers=${HEADERS}
    ${body}=    Create Dictionary    email=${VALID_USER_EMAIL}    password=${VALID_USER_PASSWORD}
    ${response}=    POST    Serverest    /login    json=${body}
    Validate API Response    ${response}    200    authorization