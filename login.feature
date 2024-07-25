            #language: pt

            Funcionalidade: Tela de Login
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Cenário: Usuário não cadastrado
            Quando eu digitar o usuário "nãocadastrado@ebac.com" e digitar a senha "Senha@123"
            E clicar no botão "Login"
            Então deve exibir uma mensagem de alerta "Usuário não cadastrado"

            Cenário: Senha inválida
            Quando eu digitar o usuário "cadastrado@ebac.com" e  digitar a senha "Senhainvalida"
            E clicar no botão "Login"
            Então deve exibir uma mensagem de alerta "E-mail, usuário ou senha inválidos"

            Cenário: Autenticar usuário válido
            Quando eu digitar o usuário "cadastrado@ebac.com" e digitar a senha "Senha@123" 
            E clicar no botão "Login"
            Então deve exibir uma mensagem de boas vindas "Bem vindo João"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar <e-mail>
            E a <senha>
            Então deve exibir a <mensagem> de boas vindas

            Exemplos:
            | e-mail               | senha     | mensagem            |
            | cadastrado@ebac.com  | Senha@123 | "Bem vindo João"    |
            | cadastrado1@ebac.com | Senha@456 | "Bem vindo Thiago"  |
            | cadastrado2@ebac.com | Senha@789 | "Bem vinda Ana"     |
            | cadastrado3@ebac.com | Senha@012 | "Bem vindo Carlos"  |
            | cadastrado4@ebac.com | Senha@345 | "Bem vinda Natalia" |



