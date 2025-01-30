*** Variables ***
*** Variables ***
${BASE_URL_FRONTEND}   https://front.serverest.dev/
${BASE_URL_API}        https://serverest.dev

${VALID_USER_EMAIL}        valid_user@email.com
${VALID_USER_PASSWORD}     123

${HEADERS}             Content-Type=application/json

${EMAIL_INPUT}         id=email
${PASSWORD_INPUT}      id=password
${LOGIN_BUTTON}        xpath=//button[contains(text(), 'Entrar')]
${DASHBOARD}           xpath=//h1[contains(text(), 'Bem Vindo')]
${BROWSER}            Chrome
