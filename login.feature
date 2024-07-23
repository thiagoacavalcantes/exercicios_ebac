Feature: Tela de Login
    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra

    Scenario: Usuário não cadastrado
        When eu digitar o usuário "nãocadastrado@ebac.com"
        And digitar a senha "Senha@123"
        And clicar no botão "Login"
        Then deve exibir uma mensagem de alerta "Usuário não cadastrado"

    Scenario: Senha inválida
        When eu digitar o usuário "cadastrado@ebac.com"
        And digitar a senha "Senhainvalida"
        And clicar no botão "Login"
        Then deve exibir uma mensagem de alerta "E-mail, usuário ou senha inválidos"

    Scenario: Autenticar usuário válido
        When eu digitar o usuário "cadastrado@ebac.com"
        And digitar a senha "Senha@123"
        And clicar no botão "Login"
        Then deve exibir uma mensagem de boas vindas "Bem vindo João"

    Scenario Outline: Autenticar multiplos usuários
        Quando eu digitar <email>
        E a <password>
        Então deve exibir a <mensagem> de boas vindas

        Examples:
            | email                | password  | mensagem            |
            | cadastrado@ebac.com  | Senha@123 | "Bem vindo João"    |
            | cadastrado1@ebac.com | Senha@456 | "Bem vindo Thiago"  |
            | cadastrado2@ebac.com | Senha@789 | "Bem vinda Ana"     |
            | cadastrado3@ebac.com | Senha@012 | "Bem vindo Carlos"  |
            | cadastrado4@ebac.com | Senha@345 | "Bem vinda Natalia" |



