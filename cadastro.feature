#language: pt

Funcionalidade: Tela de cadastro
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro
Para finalizar minha compra


Contexto:
Dado que eu esteja na tela de cadastro

Cenário: Realizar cadastro sem preencher os campos obrigatórios
Quando eu digitar no campo Empresa "EBAC"
E digitar o complemento "02", digitar o País "Brasil", clicar no botão "Finalizar compra"
Então deve exibir uma mensagem de alerta "Campos obrigatórios não preenchidos"

Cenário: Realizar cadastro com e-mail inválido
Quando eu preencher os campos obrigatórios "Nome"; "Sobrenome"; "País"; "Endereço"; "Cidade"; "CEP"; "Telefone" corretamente
E digitar o endereço de e-mail "thiago.cavalcante@" e clicar no botão "Finalizar compra"
Então deve exibir a mensagem de alerta "E-mail inválido" e não permitir o cadastro

Cenário: Realizar cadastro preenchendo todos os campos obrigatórios
Quando eu preencher os campos obrigatórios "Nome"; "Sobrenome"; "País"; "Endereço"; "Cidade"; "CEP"; "Telefone" corretamente
E digitar o endereço de e-mail "thiago.cavalcante@ebac.com", clicar no botão "Finalizar compra"
Então deve exibir a mensagem de sucesso "Cadastro finalizado com sucesso"