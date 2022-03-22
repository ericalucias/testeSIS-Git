***Settings***
Library  SeleniumLibrary

***Variables***
${mensagem_sucesso}  Usuário Criado com sucesso

***Test Cases***
Cenario: Cadastro de usuário
    Open Browser  https://automacaocombatista.herokuapp.com/users/new  chrome
    Input Text  id=user_name  Erica
    Input Text  id=user_lastname  Santos
    Input Text  id=user_email  erica@gmail.com
    click Element  xpath=//input[@name='commit']
    #Compara dois valores - o valor que aparece na tela e o valor do elemento
    ${mensagem_atual} =  Get Text  xpath=//p[@id='notice']
    Should Be Equal  ${mensagem_sucesso}  ${mensagem_atual}

    Close Browser