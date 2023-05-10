*** Settings ***
Documentation    Adicionar novo usuário com sucesso
Library          SeleniumLibrary

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


*** Test Cases ***

Caso de Teste 1 – Adicionar novo usuário com sucesso
Dado que o usuário esteja no site https://demo.automationtesting.in/Register.html
Quando preencher todos os dados com dados válidos
E clicar no botão Submit
Então o sistema deve apresentar a tela com a mensagem de sucesso

Adicionar novo usuário com sucesso
    Open Browser    ${URL}    ${BROWSER}
    Input Text      xpath://input[@placeholder='First Name']    ${FIRST_NAME}
    Input Text      xpath://input[@placeholder='Last Name']     ${LAST_NAME}
    Input Text      xpath://textarea[@ng-model='Adress']        ${ADDRESS}
    Input Text      xpath://input[@type='email']                ${EMAIL}
    Input Text      xpath://input[@type='tel']                  ${PHONE}
    Click Element   xpath://input[@value='Male']                ${GENDER}
    Click Element   xpath://input[@id='checkbox1']              ${HOBBY_MOVIES}
    Click Element   xpath://input[@type='text']                 ${LANGUAGE}
    Select From List By Value   xpath://select[@id='Skills']    ${SKILLS}
    Select From List By Value   xpath://select[@id='countries'] ${COUNTRY}
    Click Button    xpath://button[@type='submit']              ${DOB}
    Click Element   xpath://button[@id='submitbtn']
    Wait Until Page Contains    Registration Successful
    Close Browser
    
