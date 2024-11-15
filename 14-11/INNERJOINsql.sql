/*INNER JOIN: retorna linhas quando houver pelo menos uma correspondencia em ambas as tabelas
OUTER JOIN: retorna linhas mesmo quando não houver pelo menos uma correspondencia em uma das tabelas(ou ambas)
OUTER JOIN: LEFT JOIN, RIGHT JOIN e CROSS JOIN*/

/*SELECT nome_colunas
FROM nome_tabela1
JOIN nome_tabela2
ON tabela1.coluna = tabela2.coluna
JOIN nome_tabelaN
ON tabela1.coluna = tabelaN.coluna
WHERE condições */

SELECT ID_pedido, nome_produto, quantidade
FROM pedido /*tem as chaves estrangeiras*/
JOIN produto
ON pedido.id_produto = produto.id_produto
WHERE id_pedido = 2


SELECT ID_pedido, nome_cliente, nome_produto, quantidade
FROM pedido /*tem as chaves estrangeiras*/
JOIN produto
ON pedido.id_produto = produto.id_produto
JOIN cliente
ON pedido.id_cliente = cliente.id_cliente





