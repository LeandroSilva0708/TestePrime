*** Settings ***

Library  SeleniumLibrary

*** Variables ***
${BROWSER}       chrome
${URL}           https://demo.automationtesting.in/Register.html
${FIRST_NAME}    Leandro
${LAST_NAME}     Silva
${ADDRESS}       Rua Barretos 90
${EMAIL}         leandrodomingos35@hotmail.com
${PHONE}         1234567890
${GENDER}        Male
${HOBBY_MOVIES}  true
${LANGUAGE}      Portuguese
${SKILLS}        Python
${COUNTRY}       Japan
${DOB}           01/09/1991



*** Keywords ***

Adicionar novo usuário com sucesso
    Open Browser  url=${URL}  browser=${BROWSER}

