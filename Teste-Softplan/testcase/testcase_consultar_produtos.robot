*** settings ***
Resource           ../variables/variables.robot
Resource           ../resource/consultar_produtos.robot
Test Setup          Abrir navegador
Test Teardown       Fechar navegador

*** test case ***
Cenario: Consultar produto existente.
    DADO que acesso site http://automationpractice.com/index.php.
    QUANDO realizo uma busca por um produto cadastrado, através do campo de pesquisa.
    ENTAO o produto deve ser apresentado na página de resultado da busca.
    E o total de resultados deve ser exibido.
    E o total de itens e quantidades por página deve ser exibido.
    E os resultados devem ser exibidos no modo grid.
    E acesso o modo lista.
    E os resultados devem ser exibidos no modo lista.

Cenario: Consultar produto inexistente.
    DADO que acesso site http://automationpractice.com/index.php
    QUANDO realizo uma busca por um produto não cadastrado
    ENTAO a mensagem: "No results were found for your search “termo” deve ser exibida.
