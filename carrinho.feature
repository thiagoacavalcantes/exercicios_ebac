  #language: pt

            Funcionalidade: Tela de produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

Cenário: Adicionar 1 produto ao carrinho 
Dado que eu esteja na tela de produto
Quando eu selecionar o <tamanho>, <cor>
E clicar em "Comprar"
Então deve adcionar o produto ao carrinho de compras

Cenário: Adicionar 10 produtos ao carrinho
Dado que eu esteja na tela de produto
Quando eu selecionar o tamanho <tamanho>, <cor> e selecionar a quantidade de produtos em "10" 
E clicar em "Comprar"
Então deve adcionar o produto ao carrinho de compras

Cenário: Adicionar 11 produtos ao  carrinho
Dado que eu esteja na tela de produto
Quando eu selecionar o <tamanho>, <cor> e selecionar a quantidade de produtos em "11" 
E clicar em "Comprar"
Então deve exibir a mensagem de alerta "Máximo de produtos excedido"

Cenário: Limpar seleção de produtos
Dado que eu esteja na tela de produtos
Quando eu selecionar o <tamanho>, <cor>, <quantidade>
E clicar em "Limpar"
Então deve limpar a seleção de informações escolhidas do produto
