Library         SeleniumLibrary
resource        ../resource/categoria_produtos.robot

*** keywords ***
Realizar Acesso ao site de compras
          Open Browser                   ${URL}                    ${BROWSER}
Validar home do site
            Wait Until Element Is Visible          id=header_logo
            Title Should Be                        My Store
Devem ser exibidos os menus: Woman, Dress e T-shirts
            Page Should Contain element                   xpath=//*[@id="block_top_menu"]/ul/li[1]/a
            Page Should Contain element                   xpath=//*[@id="block_top_menu"]/ul/li[2]/a
            Page Should Contain element                   xpath=//*[@id="block_top_menu"]/ul/li[3]/a
validar menu Woman
            Click element                                 xpath=//*[@id="block_top_menu"]/ul/li[1]/a
#Validando categorias de Woman
            Page Should Contain                            Tops
            Page Should Contain                            Dresses
#Validado subcategorias de Tops
            Click element                                 xpath=//*[@id="categories_block_left"]/div/ul/li[1]/a
            Page Should Contain                            T-shirts
            Page Should Contain                            Blouses
#Voltando ao menu Woman
            Click element                                  xpath=//*[@id="columns"]/div[1]/a[2]
#Validado subcategorias de Dresses
            Click Element                                  xpath=//*[@id="categories_block_left"]/div/ul/li[2]/a
            Page Should Contain                            Casual Dresses
            Page Should Contain                            Evening Dresses
            Page Should Contain                            Summer Dresses
            Click element                                  xpath=//*[@id="columns"]/div[1]/a[2]


validar menu Dresses
            Click element                                 xpath=//*[@id="block_top_menu"]/ul/li[2]/a
#Validando categorias de Dresses
            Page Should Contain                            Casual Dresses
            Page Should Contain                            Evening Dresses
            Page Should Contain                            Evening Dresses

 Validar menus clicaveis
#Acessando menu  Casual Dresses
            Click element                                 xpath=//*[@id="categories_block_left"]/div/ul/li[1]/a
            Page Should Contain                           Casual Dresses
            Page Should Contain                           There is 1 product.

#Voltando ao menu Dresses
            Click element                                 xpath=//*[@id="columns"]/div[1]/a[3]
#Acessando menu  Evening Dresses
            Click element                                 xpath=//*[@id="categories_block_left"]/div/ul/li[2]/a
            Page Should Contain                           Evening Dresses
            Page Should Contain                           There is 1 product.

#Voltando ao menu Dresses
            Click element                                 xpath=//*[@id="columns"]/div[1]/a[3]
#Acessando menu  Evening Dresses
            Click element                                 xpath=//*[@id="categories_block_left"]/div/ul/li[3]/a
            Page Should Contain                           Summer Dresses
            Page Should Contain                           There are 3 products.
            
            Close Browser
