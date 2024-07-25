#language: pt

Funcionalidade: Tela de cadastro
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro
Para finalizar minha compra


Contexto:
Dado que eu esteja na tela de cadastro

Cenário: Realizar cadastro sem preencher os campos obrigatórios
Quando eu preencher apenas os campos não obrigatórios <Nome da empresa> <Pais>
E clicar no botão "Finalizar compra"
Então deve exibir uma mensagem de alerta "Campos obrigatórios não preenchidos"

Cenário: Realizar cadastro com e-mail inválido
Quando eu preencher os campos <Nome>, <Sobrenome>, <Pais>, <Endereco>, <Cidade>, <CEP>, <Telefone>
E digitar o endereço de e-mail "thiago.cavalcante@"  clicar no botão "Finalizar compra"
Então deve exibir a mensagem de alerta "E-mail inválido" e não permitir o cadastro

Cenário: Realizar cadastro preenchendo todos os campos obrigatórios
Quando Quando eu preencher os campos <Nome>, <Sobrenome>, <Pais>, <Endereco>, <Cidade>, <CEP>, <Telefone>, <E-mail>
E clicar no botão "Finalizar compra"
Então deve exibir a mensagem de sucesso "Cadastro finalizado com sucesso"