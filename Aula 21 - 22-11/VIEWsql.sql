/*CREATE OR REPLACE VIEW nome_view AS
	SELECT nome_colunas
	FROM nome_tabela1
		INNER JOIN nome_tabela1 
		ON tabela1.coluna = tabela2.coluna*/
		

CREATE OR REPLACE VIEW produtos_comprados AS
	SELECT PE.id_pedido AS numero_pedido, nome_cliente, nome_produto, PE.quantidade 
					 AS quantidade, PE.quantidade*preco 
					 AS fatura
	FROM pedido PE
		INNER JOIN produto 
		ON PE.id_produto = produto.id_produto
		INNER JOIN cliente
		ON PE.id_cliente = cliente.id_cliente
		
		
select * from produtos_comprados


/*TEM COMO ALTERAR O NOME DA VIEW*/
/*ALTERAR NOME DA VIEW*/
ALTER VIEW nome_view RENAME TO nome_nome

/*COMO EXCLUIR UMA VIEW*/
DROP VIEW IF EXISTS /*TESTA SE A VIEW EXISTE*/ nome_view CASCADE/*DESTRÓI AS VIEWS EM CASCATA*/