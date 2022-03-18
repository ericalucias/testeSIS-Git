***Settings***
Library  DebugLibrary

***Variables***


***Keywords***
for range
    FOR  ${cont}  IN RANGE  0  10
        log TO Console  ${cont}
    END

for lista
    [Arguments]  @{nomes}
    FOR  ${email}  IN  @{nomes}
        Log TO Console  ${email}@sisconsult.com.br
    END

for args 
    [Arguments]  ${max}
    FOR  ${cont}  IN RANGE  0  ${max}
        log TO Console  ${cont}
    END
    
***Test Cases***
cenario range
    for range

cenario lista
    ${nomes}  Create List  Erica  Taisa  Maria  Ademir  Ezequiel
    for lista  @{nomes} 

cenario args 
    for args  15

