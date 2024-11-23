/*Crie view de produto_categoria: selecione todos os produtos e suas categorias LEFT*/
CREATE OR REPLACE VIEW produto_categoria AS
SELECT nome_produto, nome_categoria
FROM produto
LEFT JOIN categoria
ON produto.id_categoria = categoria.id_categoria

select * from produto_categoria

/*Crie view pedidos_feitos: selecione todos os pedidos e seus usuarios RIGHT*/
CREATE OR REPLACE VIEW pedidos_feitos AS
SELECT id_pedido, nome_cliente
FROM cliente
RIGHT JOIN pedido
ON pedido.id_cliente = cliente.id_cliente

select * from pedidos_feitos

/*Crie a view usuarios_cliente: selecione todos os usuarios, juntamente com os detalhes dos pedidos e dos produtos*/
CREATE OR REPLACE VIEW usuarios_cliente AS
	SELECT nome_cliente, id_pedido, nome_produto
	FROM pedido 
		INNER JOIN produto 
		ON pedido.id_produto = produto.id_produto
		FULL OUTER JOIN cliente
		ON pedido.id_cliente = cliente.id_cliente
		
select * from usuarios_cliente