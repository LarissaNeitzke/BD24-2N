/*Selecione todas as categorias e conte quantos produtos existem em cada uma, incluindo categorias que não
possuem produtos LEFTJOIN*/

SELECT nome_categoria,
COUNT (produto)
FROM produto /*VAI CONSIDERAR ESTA TABELA NO LADO ESQUERDO/LEFT*/
LEFT JOIN categoria
ON produto.ID_categoria = categoria.ID_categoria   /*COMPARAÇÃO DAS DUAS TABELAS*/
GROUP BY nome_categoria



/*Liste todos os pedidos e os usuários que os realizaram, mas inclua também os pedidos que ainda não possuem
usuários associados RIGHTJOIN*/
SELECT id_pedido, nome_cliente
FROM pedido /*VAI CONSIDERAR ESTA TABELA NO LADO DIREITO/RIGHT*/
RIGHT JOIN cliente
ON cliente.ID_cliente = pedido.ID_cliente   /*COMPARAÇÃO DAS DUAS TABELAS*/



/*Liste todas as combinações possíveis de produtos e categorias CROSSJOIN e filtre apenas aquelas em que o
nome da categoria contém a palavra "brinquedos"*/
SELECT nome_produto, nome_categoria
FROM produto 
CROSS JOIN categoria
WHERE categoria.nome_categoria = 'Brinquedo'



/*Mostre todos os pedidos e suas categorias de produtos associadas, incluindo pedidos que não possuem
produtos e categorias FULLOUTER JOIN*/
SELECT id_pedido, nome_categoria, nome_produto
FROM pedido 
FULL OUTER JOIN produto
ON pedido.ID_produto = produto.ID_produto 
FULL OUTER JOIN categoria
ON Produto.ID_categoria = categoria.ID_categoria 



