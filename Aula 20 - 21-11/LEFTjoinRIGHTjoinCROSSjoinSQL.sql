/*LEFT JOIN, RIGHT JOIN, CROSS JOIN*/

SELECT nome_colunas
FROM nome_tablea
LEFT JOIN nome_tabela2
	ON tabela1.coluna = tabela2.coluna
RIGHT JOIN nome_tabelaN
	ON tabela1.coluna = tabelaN.coluna
CROSS JOIN nome_tabelaN
FULL OUTER JOIN nome_tabelaN
	ON tabela1.coluna=tabelaN.coluna
