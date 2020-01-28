#language: pt
@login @teste
Funcionalidade: Login
  Para que eu possa gerenciar os filmes do catálogo NinjaFlix
  Sendo um usuário previamente cadastrado
  Posso acessar o sistema com email e senha

  Cenario: Login com sucesso
    Quando eu faço login com "tony@stark.com" e "123456"
    Então devo ser autenticado
    E devo ver "Tony Stark" na área logada
  
  Esquema do Cenario: Login sem sucesso
    Quando eu faço login com <email> e <senha>
    Então não devo ser autenticado
    E devo ver a mensagem de alerta <mensagem>

    Exemplos:
    | email              | senha    | mensagem                       |
    | "tony@stark.com"   | "abc123" | "Usuário e/ou senha inválidos" |
    | "teste@teste.com"  | "123456" | "Usuário e/ou senha inválidos" |
    | ""                 | "abcdef" | "Opps. Cadê o email?"          |
    | "teste@gmail.com"  | ""       | "Opps. Cadê a senha?"          |