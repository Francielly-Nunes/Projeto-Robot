*** settings ***
Documentations      https://fakerestapi.azurewebsites.net/swagger/ui/index#!/Books/Books_Get
Suíte Setup         Conectar api
resource            ../resource/livros.robot       

*** test case ***
Cenário 01 Cadastrar livro
        Listar livros já cadastrados
