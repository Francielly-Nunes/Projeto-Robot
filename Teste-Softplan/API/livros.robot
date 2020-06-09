*** settings ***
Documentation      https://fakerestapi.azurewebsites.net/swagger/ui/index#!/Books/Books_Get
Library                 RequestsLibrary
Library                 Collections

*** variables ***
${URL_API}            https://fakerestapi.azurewebsites.net/api

*** keywords ***

Conectar api
             Create Session               softAPI               ${URL_API}

Requisitar livros já cadastrados
            ${RESPOSTA}        Get Request        softAPI                Books
             Log                ${RESPOSTA.text}
