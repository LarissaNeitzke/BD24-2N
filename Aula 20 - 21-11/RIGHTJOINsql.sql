/*RIGHT JOIN
Junta todos os registros da tabela B e apenas os registros de A ligados a B*/
SELECT nome_produto, nome_categoria
FROM produto /*VAI CONSIDERAR ESTA TABELA NO LADO DIREITO/RIGHT*/
RIGHT JOIN categoria
ON produto.ID_categoria = categoria.ID_categoria   /*COMPARAÇÃO DAS DUAS TABELAS*/


