*** settings ***
Resource           ../variables/variables.robot
Resource           ../resource/categoria_produto.robot
*** test case ***
Cenário 01 Exibir as categorias de produtos no menu da página inicial
          Realizar Acesso ao site de compras
          Validar home do site
          Devem ser exibidos os menus: Woman, Dress e T-shirts
          validar menu Woman
          validar menu Dresses
          Validar menus clicaveis
