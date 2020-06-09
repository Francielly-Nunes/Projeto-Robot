*** settings ***
Documentation            https://fakerestapi.azurewebsites.net/swagger/ui/index#!/Books/Books_Get
Resource                 livros.robot    
Suite Setup              Conectar api


*** test case ***
Cenário 01 Buscar livros existentes na API
            Requisitar livros já cadastrados
            
