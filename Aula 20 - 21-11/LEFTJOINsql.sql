/*LEFT JOIN
Junta todos os registros da tabela A apenas os registros ligados da tabela A na tabela B*/

SELECT nome_produto, nome_categoria
FROM produto /*VAI CONSIDERAR ESTA TABELA NO LADO ESQUERDO/LEFT*/
LEFT JOIN categoria
ON produto.ID_categoria = categoria.ID_categoria   /*COMPARAÇÃO DAS DUAS TABELAS*/

INSERT INTO categoria(id_categoria, nome_categoria)
VALUES (4,'Comida')

select*from categoria

INSERT INTO produto(id_produto, nome_produto, descricao,preco,estoque)
VALUES (4,'Feijao', 'Feijao Preto', 6.00,10)

select*from produto