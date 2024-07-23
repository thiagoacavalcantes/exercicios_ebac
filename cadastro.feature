 #language: pt

            Funcionalidade: Tela de cadastro
           Como cliente da EBAC-SHOP
           Quero fazer concluir meu cadastro   
           Para finalizar minha compra


Cenário: Realizar cadastro sem preencher os campos obrigatórios
E digitar o complemento "02"
E digitar o País "Brasil"
E clicar no botão "Finalizar compra"
Então deve exibir uma mensagem de alerta "Campos obrigatórios não preenchidos"

Contexto: 
Dado que eu preencha os campos obrigatórios "Nome"; "Sobrenome"; "País"; "Endereço"; "Cidade"; "CEP"; "Telefone" corretamente

Cenário: Realizar cadastro com e-mail inválido
Quando eu digitar o endereço de e-mail "thiago.cavalcante@"
E clicar no botão "Finalizar compra"
Então deve exibir a mensagem de alerta "E-mail inválido" 
E não permitir o cadastro

Cenário: Realizar cadastro preenchendo todos os campos obrigatórios
Quando digitar o endereço de e-mail "thiago.cavalcante@ebac.com"
E clicar no botão "Finalizar compra"
Então deve exibir a mensagem de sucesso "Cadastro finalizado com sucesso" 
E permitir o cadastro