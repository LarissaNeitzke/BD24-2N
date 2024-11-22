/*CROSS JOIN
Junta todas as linhas de A e todas as linha de B
Junta todos os registros ligados de A e B
Alem de replicas de linhas de A e B com variações entre registros das mesmas tabelas
Da informações inexistentes, ria todas as probabilidades dos cadastros
PRODUTO CARTESIANO*/

SELECT nome_produto, nome_categoria
FROM produto 
CROSS JOIN categoria

SELECT nome_produto, nome_cliente
FROM produto 
CROSS JOIN cliente
