/*Listar todas as informações da relação cliente*/
SELECT * FROM cliente;

/*Listar todos os nomes unicos da relaçao cliente*/
SELECT DISTINCT nome_cliente FROM cliente;

/*Listar o nome e CPF de todos os clientes*/
SELECT nome_cliente,CPF FROM cliente;

/*Listar o nome e CPF dos clientes do sexo feminino*/
SELECT nome_cliente,CPF FROM cliente WHERE genero = 'feminino';

/*Ordenar a listagem anterior por nome, de forma decrescente*/
SELECT nome_cliente,CPF FROM cliente WHERE genero = 'feminino' ORDER BY nome_cliente DESC;


/*Listar nome e o salario dos usuarios do sexo masculino que ganham menos de R$3000*/
SELECT nome_cliente,salario,genero
FROM cliente
WHERE genero = 'masculino' AND salario < '3000';

alter table cliente alter column salario type numeric;
alter table cliente alter column salario type money;


