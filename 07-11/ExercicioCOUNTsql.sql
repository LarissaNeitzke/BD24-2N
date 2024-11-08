/*Contar o numero de produtos da tabela de produtos*/
SELECT COUNT (*) FROM produto;

/*Contar o numero de pedidos feitos pelo cliente 2*/
SELECT COUNT (*) as numeroDePedidosCliente2
FROM pedido
WHERE id_cliente = '2';

/*Contar o numero de pedidos feitos do produto 1*/
SELECT COUNT (*) as numeroDePedidosProduto1
FROM pedido
WHERE id_produto = '1';

/*Contar o numero de clientes que fizeram pelo menos 1 pedido*/
SELECT COUNT (DISTINCT id_cliente) FROM pedido; 

