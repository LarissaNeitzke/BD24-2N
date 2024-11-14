/*1) Selecione o nome dos Usuarios e o número do pedido de cada pedido.*/
SELECT nome_cliente, ID_pedido
FROM cliente, pedido

/*2) Selecione o nome dos produtos e a quantidade nos pedidos*/
SELECT nome_produto, quantidade
FROM produto, pedido

/*3) Selecione o nome dos client, número do pedido onde a quantidade de
produto comprada for maior que 2.*/
SELECT nome_cliente, id_pedido, quantidade
FROM cliente, pedido
WHERE cliente.ID_cliente = pedido.ID_pedido AND quantidade > 2

/*4) Selecione o nome dos cliente, quantidade dos pedidos, nome dos
produtos e faça a soma do valor dos produtos comprados.*/
SELECT nome_cliente, quantidade, nome_produto, preco*quantidade AS soma_produtos
FROM cliente, pedido, produto 
WHERE pedido.ID_pedido = cliente.ID_cliente AND pedido.ID_produto = produto.ID_produto




