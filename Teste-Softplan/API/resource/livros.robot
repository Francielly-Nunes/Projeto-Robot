*** settings ***
Documentations      https://fakerestapi.azurewebsites.net/swagger/ui/index#!/Books/Books_Get
Library             RequestsLibrary
Library             collections

*** variables ***
${URL_API}            https://fakerestapi.azurewebsites.net/api

*** keywords ***
Conectar api
        Create Session               API_SOFTPLAN              ${URL_API}

Retornar livros já cadastrados
            ${retorno}     Get Request       API_SOFTPLAN       Books
             Log               ${retorno.text}
