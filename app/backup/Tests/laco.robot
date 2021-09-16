*** Variable ***
@{animal}    gato    cachorro    cavalo
@{FRUTAS}    maça  banana  uva  abacaxi

*** Test Case ***
novo formato do FOR de listas
    Criar cadastrado de produtos (FOR aninhado)

Criar dicionario
    percorrer lista de linguas

Listar tamanhos    
    percorrer lista de tamanho

Testes mais opções de for IN RANGE
    Tradicional 
    Apenas quantidade de laços informada (limite superior)
    Aritimético
    Intervalos especificos

*** Keywords ***
Criar cadastrado de produtos (FOR aninhado)
    FOR     ${produto}      IN  baby look   camiseta    blusa
        Imprime tamanhos para o produto     ${produto}
    END

Imprime tamanhos para o produto
    [Arguments]     ${produto}
    FOR     ${tamanho}  IN  P   M   G
        Log     Produto ${produto} - Tam: ${tamanho}
    END

percorrer lista de linguas
    FOR     ${index}    ${english}     ${finnish}   ${portugues}    IN   
    ...      1           cat             kissa        gato
    ...      2           dog             koira        cachorro
    ...      3           horse           hevonem      cavalo
        LOG     Animal ${index}:\nEm inglês: ${english} \nEm finlandês: ${finnish}\nEm portugues: ${portugues}              
    END

percorrer lista de tamanho
    FOR     ${index}    ${item}     IN ENUMERATE    P   M   G   GG  XG  XXG
        Log     Item da lista: ${item} - Posição do item na lista: ${index}
    END

Tradicional 
    [Documentation]     Percorre de 1 até 10
    FOR     ${index}    IN RANGE    1   11
        Log   ${index}
    END

Apenas quantidade de laços informada (limite superior)
    [Documentation]     Percorre de 0 até 9
    FOR     ${index}    IN RANGE    10
        Log    ${index}
    END

Aritimético
    [Documentation]     Percorre de 0 até 5
    ${var}  Set Variable     ${5}
    FOR     ${index}    IN RANGE    ${var} + 1
        Log    ${index}
    END

Intervalos especificos
    [Documentation]     Percorre de 0 até 30, pulando de 5 em 5
    FOR     ${index}    IN RANGE    0   31  5
        Log    ${index}
    END
