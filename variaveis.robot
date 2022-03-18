*** Variable ***
${NOME}     Erica
&{ANIMAL}       especie=Répitil     noem=Lagarto    quantidade=2          
@{COMPRAS}      chocolate   batata freta    salgadinho  danone

*** Keywords ***
somar numeros
    [Arguments]     ${numA}     ${numB}
    ${soma}     Evaluate        ${numA}+${numB}
    [Return]    ${soma}

somar os numeros    "${numA}"   e   "${numB}"
    ${Soma}     Evaluate        ${numA}+${numB}
    [Return]    ${Soma}


Cria Sobrenome
    [Arguments]     ${primeiroNome}
    [Return]    ${primeiroNome} Santos

Criar email
    [Arguments]     ${nome}
    [Return]    ${nome}@tetesis.com.br

*** Test Cases ***
Variável Simples
    Log TO Console      ${NOME}
    Log     ${NOME}

Variável Dicionario
    Log TO Console      ${ANIMAL.especie}

Variável Lista
    Log TO Console   ${COMPRAS[0]}

Argumentos e retornos
    ${resultado}    somar numeros   1   16
    Log TO Console  ${resultado}    

Nome Composto
    ${nomeCompleto}     Cria Sobrenome      Erica
    log TO Console      ${nomeCompleto}

Argumentos embutidos
    ${resultado}    somar os numeros    "5" e   "5"
    log TO Console  ${resultado}

email
    ${email}    Criar email     erica
    log TO Console      ${email}

