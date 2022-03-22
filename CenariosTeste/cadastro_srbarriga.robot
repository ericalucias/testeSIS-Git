***Settings***
Library  SeleniumLibrary

***Variables***


***Test Cases***
Cenário: Cadastro novo usuário
    Open Browser  https://seubarriga.wcaquino.me/cadastro  chrome
    Input Text  id=nome  Erica
    Input Text  id=email  erical3@gmail.com
    Input Text  id=senha  123456
    Click Element  xpath=//input[@type='submit']
    Element Should Contain  //div[@role='alert']  Usuário inserido com sucesso
    Click Element  //a[@href='/cadastro']
    
Cenário: Cadastro usuário existente
    Input Text  id=nome  Erica
    Input Text  id=email  erical3@gmail.com
    Input Text  id=senha  123456
    Click Element  xpath=//input[@type='submit']
    Element Should Contain  //div[@role='alert']  Endereço de email já utilizado

Cenário: Login
    Click Element  //a[@href='/login']
    Input Text  id=email  erical3@gmail.com
    Input Text  id=senha  123456
    Click Element  xpath=//button[@type='submit']
    Element Should Contain  //div[@role='alert']  Bem vindo
