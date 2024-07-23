  #language: pt

            Funcionalidade: Tela de produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

Cenário: Adicionar 1 produto ao carrinho 
Quando eu selecionar o tamho "M"
E a cor "Orange"
E clicar em "Comprar"
Então deve adcionar o produto ao carrinho de compras

Cenário: Adicionar 10 produtos ao carrinho
Quando eu selecionar o tamho "S"
E a cor "Blue"
E selecionar a quantidade de produtos em "10"
E clicar em "Comprar"
Então deve adcionar o produto ao carrinho de compras

Cenário: Adicionar 11 produtos ao  carrinho
Quando eu selecionar o tamho "XS"
E a cor "Red"
E selecionar a quantidade de produtos em "11"
E clicar em "Comprar"
Então deve exibir a mensagem de alerta "Máximo de produtos excedido"

Cenário: Limpar seleção de produtos
Quando eu selecionar o tamho "XL"
E a cor "Red"
E selecionar a quantidade de produtos em "7"
E clicar em "Limpar"
Então deve limpar a seleção de informações selecionadas do produto
