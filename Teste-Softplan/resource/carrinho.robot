*** settings ***
Library         SeleniumLibrary
resource        ../resource/carrinho.robot

*** keywords ***
Realizar Acesso ao site de compras
            Open Browser                           ${URL}                    ${BROWSER}
Validar home do site
            Wait Until Element Is Visible             id=header_logo
            Title Should Be                           My Store
Validar carrinho de compras vazio, deve ser exibida a mensagem: “Your shopping cart is empty”
            Click element                             xpath=//header[@id='header']/div[3]/div/div/div[3]/div/a/b
            Page Should Contain                        Your shopping cart is empty
            Close browser

Adicionar um produto ao carrinho, o usuário deve ser questionado se deseja continuar comprando ou finalizar a compra
                Open Browser                           ${URL}                    ${BROWSER}
                Wait Until Element Is Visible          id=header_logo
                Click element                          xpath=//*[@id="homefeatured"]/li[2]/div/div[1]/div/a[1]/img
                Click element                          xpath=//*[@id="add_to_cart"]/button/span
                Page Should Contain                    There is 1 item in your cart.
                Page Should Contain                    Continue shopping
                Page Should Contain                    Proceed to checkout
                Wait Until Element Is Visible          xpath=//*[@id="layer_cart"]/div[1]/div[2]/div[4]/a/span
                #Validar valores
                Click element                          xpath=//*[@id="layer_cart"]/div[1]/div[2]/div[4]/a/span
                Page Should Contain element            xpath=//*[@id="product_price_2_7_0"]/span
                Page Should Contain element            xpath=//*[@id="product_2_7_0_0"]/td[5]/input[2]
                Page Should Contain element            id=total_product_price_2_7_0
                Page Should Contain element            id=total_price
                #Excluir item do carrinho
                Click element                          class=icon-trash
                Page Should Contain                    Your shopping cart is empty.
                Close browser
