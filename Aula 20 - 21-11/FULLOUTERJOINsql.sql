/*FULL OUTER JOIN
É a junção de left join e right join
Usa informações verdadeiras*/

SELECT nome_produto, nome_categoria
FROM produto 
FULL OUTER JOIN categoria
ON produto.ID_categoria = categoria.ID_categoria 
