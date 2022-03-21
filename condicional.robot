***Settings***


***Variables***
    

***Keywords***
condicional simples
    [Arguments]  ${veiculo}
    IF  "${veiculo}" == "Automovel"
        log To Console  Encontrei um Automovel!
    ELSE 
        log TO COnsole  Não encontrei um Automovel!
    END    

encontrar numero
    [Arguments]  @{lista}
    FOR  ${cont}  IN  @{lista}
        IF  "${cont}" == "5"
        log TO Console  Sucesso
        END
    END

par impar
    [Arguments]  @{lista}
    FOR  ${cont}  IN  @{lista}
        ${resultado}  evaluate  ${cont}%2 
        # a porcentagem retorna o resto da divisão
        IF  "${resultado}" == "0"
            log TO Console  O numero ${cont} é PAR 
        ELSE
            log TO Console  o numero ${cont} é IMPAR 
        END
    END

numero
    FOR  ${cont}  IN RANGE  0  10
        IF  ${cont} == 5
            log TO Console  estou no numro ${cont}
        ELSE IF  ${cont} == 8
            log TO Console  estou no numro ${cont}
        END
    END

***Test Cases***
validar carro  
    condicional simples  bicicleta

validar numero  
    @{lista}  Create List  1  2  3  4  5
    encontrar numero  @{lista}

impar ou par    
    @{lista}  Create List  1  2  3  4  5
    par impar  @{lista}

imprime numero
    numero
