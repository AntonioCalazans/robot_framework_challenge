***Settings***
Library         SeleniumLibrary
Resource        ../../resources/variables.robot
Resource        ../../resources/keywords.robot

***Test Cases***
Testar Cadastro De Usuario
    ${random_name}    ${random_email}=    Generate Random User Data
    Perform User Registration    ${random_name}    ${random_email}    senha123

Testar Login Com Usuario Valido
    Perform Login    ${VALID_USER_EMAIL}    ${VALID_USER_PASSWORD}      
    Wait Until Element Is Visible    ${DASHBOARD}
    Capture Page Screenshot
    Close Browser

