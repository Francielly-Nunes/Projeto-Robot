*** settings ***
Resource           ../variables/variables.robot
Resource           ../resource/consultar_produtos.robot
*** test case ***
Cenário 01 Consultar produtos
        Realizar Acesso ao site de compras
        Validar home do site
        Consultar o produto Dresses já cadastrado no campo de pesquisa
Cenário 02 Consultar produtos Inexistentes
        Consultar o produto eletro inexistente
