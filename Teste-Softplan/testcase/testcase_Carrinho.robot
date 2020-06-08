*** settings ***
Resource           ../variables/variables.robot
Resource           ../resource/carrinho.robot
*** test case ***
Cenário 01 Carrinho de compras
        Realizar Acesso ao site de compras
        Validar home do site
        Validar carrinho de compras vazio, deve ser exibida a mensagem: “Your shopping cart is empty”
        Adicionar um produto ao carrinho, o usuário deve ser questionado se deseja continuar comprando ou finalizar a compra
