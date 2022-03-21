***Settings***
Library     SeleniumLibrary

***Test Cases***
cenario: Login na aplicação
    Open Browser  http://automationpractice.com/index.php  chrome
    Maximize Browser Window
    Set Selenium Timeout  60
    # sitema ira esperar ate 60 segundos, se abrir antes ele dará continuidade
    Click Element  xpath=//a[@class='login']
    # Input Text  xpath=//input[@id='email'] é o memso que id=email
    # quando tem id pode usar somente o id
    Input Text  id=email  erica@gmail.com
    # se não validar o email e informar um email inválido, o teste vai passar porém com erro na pagina
    Input Text  id=passwd  123456
    Click Element  id=SubmitLogin
    Page Should Contain  Erica Santos
    Capture Page Screenshot
    Close Browser



