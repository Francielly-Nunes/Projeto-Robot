*** settings ***
Library         SeleniumLibrary
resource        ../resource/consultar_produtos.robot

*** keywords ***
Realizar Acesso ao site de compras
          Open Browser                   ${URL}                    ${BROWSER}
Validar home do site
            Wait Until Element Is Visible          id=header_logo
            Title Should Be                        My Store
Consultar o produto ${produto} já cadastrado no campo de pesquisa
              Click element                        id=search_query_top
              Input Text                           id=search_query_top       ${produto}
              Click element                        name=submit_search
              Page Should Contain                   ${produto}

#Valida a quantidade total de produtos listados na página
              Page Should Contain                  7 results have been found.

#Exibir em grid os produtos listados
              Page Should Contain                  Grid

#Exibir em list os produtos listados
              click element                        id=list
              Page Should Contain                  list

#Validar a quantidade total de Itens exibidos por página
              click element                        id=list
              Page Should Contain                  Showing 1 - 7 of 7 items


Consultar o produto ${produto2} inexistente
               Click element                        id=search_query_top
               Input Text                           id=search_query_top       ${produto2}
               Click element                        name=submit_search
               Wait Until Element Is Visible        class=alert
               Page Should Contain                  No results were found for your search
  Close browser
