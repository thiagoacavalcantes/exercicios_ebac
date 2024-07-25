  #language: pt

            Funcionalidade: Tela de produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

Cenário: Adicionar 1 produto ao carrinho 
Dado que eu esteja na tela de produto
Quando eu selecionar o tamho "M"
E a cor "Orange" clicar em "Comprar"
Então deve adcionar o produto ao carrinho de compras

Cenário: Adicionar 10 produtos ao carrinho
Dado que eu esteja na tela de produto
Quando eu selecionar o tamho "S"
E a cor "Blue" selecionar a quantidade de produtos em "10" clicar em "Comprar"
Então deve adcionar o produto ao carrinho de compras

Cenário: Adicionar 11 produtos ao  carrinho
Dado que eu esteja na tela de produto
Quando eu selecionar o tamho "XS"
E a cor "Red" selecionar a quantidade de produtos em "11" clicar em "Comprar"
Então deve exibir a mensagem de alerta "Máximo de produtos excedido"

Cenário: Limpar seleção de produtos
Quando eu selecionar o tamho "XL"
E a cor "Red" selecionar a quantidade de produtos em "7" clicar em "Limpar"
Então deve limpar a seleção de informações selecionadas do produto
