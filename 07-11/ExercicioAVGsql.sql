/*Como ver a média. Ex: média salarial*/
SELECT AVG(salario) FROM cliente;

/*Calcular o preço médio dos produtos*/
SELECT AVG(money) FROM produto;

/*Calcular a quantidade média de produtos por pedido*/
SELECT AVG(quantidade) FROM pedido;

/*Calcular a média de pedidos feitos por clientes*/
SELECT AVG(num_pedidos) FROM (SELECT id_cliente, COUNT (*) AS num_pedidos FROM pedido GROUP BY id_cliente) as quantidade_pedidos;

/*Calcular a média dos salários dos clientes*/
SELECT AVG(salario) from cliente;

select * from pedido
